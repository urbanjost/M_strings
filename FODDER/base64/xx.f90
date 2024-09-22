! Author:  Philipp Engel
! Licence: ISC
module dm_base64
!! Base64 encoding for poor people.
!use :: dm_ascii
implicit none (type, external)
private
public :: dm_base64_encode
contains
pure subroutine dm_base64_encode(input, output, mime)
use, intrinsic :: iso_fortran_env, only: i8     => int64
character, parameter :: ASCII_CR  = achar(13) ! carriage return
character, parameter :: ASCII_LF  = achar(10) ! NL line feed, new line
character(len=*), parameter :: CR_LF = ASCII_CR // ASCII_LF !! `\r\n`
!! Encodes given input string in base64, with optional line break after 76 characters (MIME format).
character(len=*), intent(in)                :: input  !! Input string.
character(len=:), allocatable, intent(out)  :: output !! Base64-encoded output string.
logical, intent(in), optional               :: mime   !! MIME encoding.

character(len=:), allocatable :: p, r
integer                       :: b1, b2, b3, b4
integer                       :: k
integer(kind=i8)              :: c, i, n
logical                       :: mime_

character(len=*), parameter :: B64_SET = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'

   mime_ = .false.
   if (present(mime)) mime_ = mime

   n = len(input, kind=i8)
   c = modulo(n, 3_i8)
   p = ''; r = ''

   if (c > 0) then
      do i = c, 2
         p = p//'='
      end do
   end if

   do c = 0, n - 1, 3
      if (mime_ .and. c > 0 .and. modulo(c/3*4, 76_i8) == 0) then
         r = r//CR_LF
      end if

      k = shiftl(iachar(input(c + 1:c + 1)), 16) + &
          shiftl(iachar(input(c + 2:c + 2)), 8)
      if (c + 3 <= n) k = k + iachar(input(c + 3:c + 3))

      b1 = 1 + iand(shiftr(k, 18), 63)
      b2 = 1 + iand(shiftr(k, 12), 63)
      b3 = 1 + iand(shiftr(k, 6), 63)
      b4 = 1 + iand(k, 63)

      r = r//B64_SET(b1:b1)//B64_SET(b2:b2)// &
          B64_SET(b3:b3)//B64_SET(b4:b4)
   end do

   output = r(1:len(r) - len(p))//p
   deallocate (p, r)
end subroutine dm_base64_encode
end module dm_base64
program testit
use M_io, only : filebyte, getline
use dm_base64, only : dm_base64_encode
implicit none
character(len=1),allocatable :: text(:) ! array to hold file in memory
character(len=*),parameter :: FILENAME='inputfile' ! file to read
character(len=:), allocatable :: output
character(len=:), allocatable :: input

   ! create test file
   open(file=FILENAME,unit=10,action='write')
   write(10,'(a)') new_line('A')//'esrever lliw'
   write(10,'(a)') 'margorp elpmas eht taht'
   write(10,'(a)') 'elif elpmas a si sihT'
   close(unit=10)

   call filebyte(FILENAME,text) ! allocate character array and copy file into it

   if(.not.allocated(text))then
      write(*,*)'*rever* failed to load file '//FILENAME
   else
      ! write file reversed to stdout
      ! write(*,'(*(a:))',advance='no')text(size(text):1:-1)
   endif
!   call a( ['a','b','c'])
!   call a('abc')
   input=a2s(text)
   !write(*,'(*(a:))',advance='yes')input
   call dm_base64_encode(input, output, mime=.false.)
   !write(*,'(*(a:))',advance='yes')output
   call dm_base64_encode(input, output, mime=.true.)
   write(*,'(*(a:))',advance='no')output
   deallocate(text)  ! release memory
contains
subroutine a(chars)
character(len=*),intent(in) :: chars(..)
! pointer, transfer, switch(3l),generic
   SELECT RANK(chars)
   RANK(0); write(*,*)'scalar'
   RANK(1); write(*,*)'array(1)'
   END SELECT
   write(*,*)'end'
end subroutine a
function a2s(array)  result (string)

!$@(#) M_strings::a2s(3fp): function to copy char array to string

character(len=1),intent(in) :: array(:)
character(len=SIZE(array))  :: string
! ----------------------------------------------------------------------------------------------------------------------------------
!   forall( i = 1:size(array)) string(i:i) = array(i)
! ----------------------------------------------------------------------------------------------------------------------------------
  string=transfer(array,string)
end function a2s

end program testit
