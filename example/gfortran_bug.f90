program demo_join
! gfortran bug
   implicit none
   character(len=:), allocatable  :: s(:)
   s = [character(len=10) :: 'a', 'b', 'c', 'd', 'e', 'f']
   write (*, '(*(a))') s(1:3)
   write (*, '(*(a))') s(4:6)
   write (*, '(*(a))') s(6:6)
end program demo_join
! ifx (IFX) 2024.1.0 20240308
!a         b         c         
!d         e         f         
!f         
! GNU Fortran (Ubuntu 13.1.0-8ubuntu1~20.04.2) 13.1.0
!a         b         c         
!a         b         c         
!a         
