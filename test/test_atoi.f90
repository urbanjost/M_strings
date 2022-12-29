program check
use,intrinsic :: iso_fortran_env, only : stdin=>input_unit, stdout=>output_unit, stderr=>error_unit
use,intrinsic :: iso_fortran_env, only : ip => int32, int64, wp => real64
use M_strings, only : int, atoi, atol
implicit none
character(len=:),allocatable :: tests(:)
integer(kind=ip),parameter   :: first=0, last=huge(0_ip)
character(len=256)           :: iomsg=' '
integer                      :: iostat
integer                      :: i 
integer(int64)               :: val
integer(kind=int64)          :: val2
character(len=:),allocatable :: msg

   ! test various good and bad strings
   tests=[character(len=80) :: &
   '1',                                     &
   '-0',                                    &
   ' 0',                                    &
   '+0',                                    &
   '-1',                                    &
   '+ ',                                    &
   '- ',                                    &
   '-1234567890123456789',                  &
   '+123456789012345678',                   &
   '  123 456 7890 123 456 789  ',          &
   '8999999999999999999         ',          &
   '9223372036854775807',                   &
   '9223372036854775808',                   &
   '',                                      &
   ! bad values
   '9999999999999999999                 ',  &
   '1111111111111111111111              ',  &
   '123456-7890123456789',                  &
   '--1234567890123456789',                 &
   '1234567-890123456789',                  &
   '1234567890-123456789',                  &
   '+-1234567890123456789',                 &
   '@']

   do i=1,size(tests)
      val=-99999999
      val2=-99999999
      val=atol(tests(i))
      iomsg=repeat(' ',256) ! bug in nvfortran or returned string is padded with null
      read(tests(i),fmt=*,iostat=iostat,iomsg=iomsg)val2
      write(*,'(g0,T12,g0,1x,g0,T48,g0,1x,g0,T85,g0,1x,g0,T122,"")') &
      & ' string:',trim(tests(i)), &
      & ' from atol:',val, &
      & ' from read:',val2
      if(iostat.ne.0)then
         write(*,'(g0,1x,g0,1x)')'iomsg:',trim(iomsg)
      endif
   enddo
end program check
