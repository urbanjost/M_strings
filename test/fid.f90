program test_id
use, intrinsic                 :: iso_fortran_env, only : int32, int64
implicit none
   call platform()
   write(*,*)
   call clockrate()
contains

subroutine clockrate()
integer(kind=int64)            :: count64, count_rate64, count_max64
integer(kind=int64)            :: count64b
character(len=*), parameter    :: g = '(1x,*(g0,1x))'
integer(kind=int64)            :: i
integer(kind=int64)            :: j
   print g, huge(0_int64)
   call system_clock(count64,count_rate64,count_max64)
   print g,  'SYSTEM_CLOCK(3) (using integer(kind=int64), result may vary with argument type):'
   print g, 'COUNT_MAX(64bit)=    ', three(count_max64)
   print g, 'COUNT_RATE(64bit)=   ', three(count_rate64)
   print g, 'CURRENT COUNT(64bit)=', three(count64)

   do j=1,10
      call system_clock(count64,count_rate64,count_max64)
      do i=1,huge(0_int64)-1
         call system_clock(count64b,count_rate64,count_max64)
         if(count64b.ne.count64)then
            write(*,*)count64b-count64
            exit
         endif
      enddo
   enddo
end subroutine clockrate

subroutine platform()
use, intrinsic                 :: iso_fortran_env, only : compiler_version
use, intrinsic                 :: iso_fortran_env, only : compiler_options
implicit none
character(len=:),allocatable   :: version, options
character(len=*),parameter     :: nl=new_line('a')
integer                        :: where, start, break, i, last, col
   version=compiler_version()//' '
   options=' '//compiler_options()
   start=1
   do
      where=index(options(start:),' -')
      if(where.eq.0)exit
      break=where+start-1
      options(break:break)=nl
      start=where
   enddo
   if(start.eq.1)then
      do
         where=index(options(start:),' /')
         if(where.eq.0)exit
         break=where+start-1
         options(break:break)=nl
         start=where
      enddo
   endif
   last=len_trim(version)+1
   col=0
   do i=1,len_trim(version)
    col=col+1
    if(version(i:i).eq.' ')last=i
    if(col.gt.76)then
       version(last:last)=nl
       col=0
    endif
   enddo
   print '(a,/,3x,*(a))', 'This file was compiled by :', inset(version)
   if(options.ne.'')then
      print '(*(a))', 'using the options :', inset(options)
   endif
end subroutine platform

function inset(string) result(longer)
character(len=*),intent(in)    :: string
character(len=:),allocatable   :: longer
character(len=*),parameter     :: nl=new_line('a')
integer                        :: i
   longer=''
   do i=1,len(string)
      longer=longer//string(i:i)
      if(string(i:i).eq.nl)then
         longer=longer//'   '
      endif
   enddo
end function inset

function three(in) result(out)
integer(kind=int64),intent(in) :: in
character(len=:),allocatable   :: temp
character(len=:),allocatable   :: out
integer                        :: i
character(len=80)              :: line
   write(line,*)abs(in)
   temp='  '//trim(adjustl(line))
   out=''
   do i=len(temp),3,-3
      out=','//temp(i-2:i)//out
   enddo
   out=trim(adjustl(out(2:)))
   out=merge(' ','-',in>0)//out
end function three

end program test_id
