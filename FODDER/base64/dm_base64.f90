! Author:  Philipp Engel
! Licence: ISC
module dm_base64
!! Base64 encoding for poor people.
use :: dm_ascii
use :: dm_kind
implicit none (type, external)
private

public :: dm_base64_encode
contains
pure subroutine dm_base64_encode(input, output, mime)
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
