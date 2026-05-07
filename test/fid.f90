program test_id
<<<<<<< HEAD
=======
implicit none
   call platform()
contains

subroutine platform()
>>>>>>> 67fe3c7f48b6d9f747fc3944e4a8e1adc3d774cb
use, intrinsic :: iso_fortran_env, only : compiler_version
use, intrinsic :: iso_fortran_env, only : compiler_options
implicit none
character(len=:),allocatable :: version, options
character(len=*),parameter   :: nl=new_line('a')
<<<<<<< HEAD
integer                      :: where, start, break
   version=compiler_version()
=======
integer                      :: where, start, break, i, last, col
   version=compiler_version()//' '
>>>>>>> 67fe3c7f48b6d9f747fc3944e4a8e1adc3d774cb
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
<<<<<<< HEAD
   print '(*(1x,a))', &
    'This file was compiled by ', &
    version,nl,        &
    'using the options ',         &
    options
=======
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
character(len=*),intent(in)  :: string
character(len=:),allocatable :: longer
character(len=*),parameter   :: nl=new_line('a')
integer                      :: i
   longer=''
   do i=1,len(string)
      longer=longer//string(i:i)
      if(string(i:i).eq.nl)then
         longer=longer//'   '
      endif
   enddo
end function inset

>>>>>>> 67fe3c7f48b6d9f747fc3944e4a8e1adc3d774cb
end program test_id
