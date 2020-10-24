module M_msg
implicit none
private
!-----------------------------------------------------------------------------------------------------------------------------------
! USED SO FREQUENTLY IN OTHER MODULES PUT IN THIS ONE WITH NO DEPENDENCIES TO PREVENT CIRCULAR DEPENDENCY

! ident_1="@(#)M_msg::anymsg(3f): {msg_scalar,msg_one}"

public anymsg
interface anymsg
   module procedure msg_scalar, msg_one
end interface anymsg
contains
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
!>
!!##NAME
!!    anymsg(3f) - [M_msg] converts any standard scalar type to a string
!!    (LICENSE:PD)
!!##SYNOPSIS
!!
!!    function anymsg(g0,g1,g2,g3,g4,g5,g6,g7,g8,g9,ga,gb,gc,gd,ge,gf,gg,gh,gi,gj,nospace)
!!
!!     class(*),intent(in),optional  :: g0,g1,g2,g3,g4,g5,g6,g7,g8,g9
!!     class(*),intent(in),optional  :: ga,gb,gc,gd,ge,gf,gg,gh,gi,gj
!!     logical,intent(in),optional   :: nospace
!!     character,len=(:),allocatable :: anymsg
!!
!!##DESCRIPTION
!!    anymsg(3f) builds a space-separated string from up to nine scalar values.
!!
!!##OPTIONS
!!    g[0-9a-j]  optional value to print the value of after the message. May
!!               be of type INTEGER, LOGICAL, REAL, DOUBLEPRECISION, COMPLEX,
!!               or CHARACTER.
!!    nospace    if nospace=.true., then no spaces are added between values
!!##RETURNS
!!    anymsg     description to print
!!##EXAMPLES
!!
!!   Sample program:
!!
!!    program demo_msg
!!    use M_msg, only : anymsg
!!    implicit none
!!    character(len=:),allocatable :: pr
!!    character(len=:),allocatable :: frmt
!!    integer                      :: biggest
!!
!!    pr=anymsg('HUGE(3f) integers',huge(0),'and real',huge(0.0),'and double',huge(0.0d0))
!!    write(*,'(a)')pr
!!    pr=anymsg('real            :',huge(0.0),0.0,12345.6789,tiny(0.0) )
!!    write(*,'(a)')pr
!!    pr=anymsg('doubleprecision :',huge(0.0d0),0.0d0,12345.6789d0,tiny(0.0d0) )
!!    write(*,'(a)')pr
!!    pr=anymsg('complex         :',cmplx(huge(0.0),tiny(0.0)) )
!!    write(*,'(a)')pr
!!
!!    ! create a format on the fly
!!    biggest=huge(0)
!!    frmt=anymsg('(*(i',int(log10(real(biggest))),':,1x))',nospace=.true.)
!!    write(*,*)'format=',frmt
!!
!!    ! although it will often work, using anymsg(3f) in an I/O statement is not recommended
!!    write(*,*)anymsg('program will now stop')
!!
!!    end program demo_msg
!!
!!  Output
!!
!!    HUGE(3f) integers 2147483647 and real 3.40282347E+38 and double 1.7976931348623157E+308
!!    real            : 3.40282347E+38 0.00000000 12345.6787 1.17549435E-38
!!    doubleprecision : 1.7976931348623157E+308 0.0000000000000000 12345.678900000001 2.2250738585072014E-308
!!    complex         : (3.40282347E+38,1.17549435E-38)
!!     format=(*(i9:,1x))
!!     program will now stop
!!
!!##AUTHOR
!!    John S. Urban
!!##LICENSE
!!    Public Domain
function msg_scalar(generic0, generic1, generic2, generic3, generic4, generic5, generic6, generic7, generic8, generic9, &
                  & generica, genericb, genericc, genericd, generice, genericf, genericg, generich, generici, genericj, &
                  & nospace)
implicit none

! ident_2="@(#)M_msg::msg_scalar(3fp): writes a message to a string composed of any standard scalar types"

class(*),intent(in),optional  :: generic0, generic1, generic2, generic3, generic4
class(*),intent(in),optional  :: generic5, generic6, generic7, generic8, generic9
class(*),intent(in),optional  :: generica, genericb, genericc, genericd, generice
class(*),intent(in),optional  :: genericf, genericg, generich, generici, genericj
logical,intent(in),optional   :: nospace
character(len=:), allocatable :: msg_scalar
character(len=4096)           :: line
integer                       :: istart
integer                       :: increment
   if(present(nospace))then
      if(nospace)then
         increment=1
      else
         increment=2
      endif
   else
      increment=2
   endif

   istart=1
   line=''
   if(present(generic0))call print_generic(generic0)
   if(present(generic1))call print_generic(generic1)
   if(present(generic2))call print_generic(generic2)
   if(present(generic3))call print_generic(generic3)
   if(present(generic4))call print_generic(generic4)
   if(present(generic5))call print_generic(generic5)
   if(present(generic6))call print_generic(generic6)
   if(present(generic7))call print_generic(generic7)
   if(present(generic8))call print_generic(generic8)
   if(present(generic9))call print_generic(generic9)
   if(present(generica))call print_generic(generica)
   if(present(genericb))call print_generic(genericb)
   if(present(genericc))call print_generic(genericc)
   if(present(genericd))call print_generic(genericd)
   if(present(generice))call print_generic(generice)
   if(present(genericf))call print_generic(genericf)
   if(present(genericg))call print_generic(genericg)
   if(present(generich))call print_generic(generich)
   if(present(generici))call print_generic(generici)
   if(present(genericj))call print_generic(genericj)
   msg_scalar=trim(line)
contains
!===================================================================================================================================
subroutine print_generic(generic)
!use, intrinsic :: iso_fortran_env, only : int8, int16, int32, biggest=>int64, real32, real64, dp=>real128
use,intrinsic :: iso_fortran_env, only : int8, int16, int32, int64, real32, real64, real128
class(*),intent(in) :: generic
   select type(generic)
      type is (integer(kind=int8));     write(line(istart:),'(i0)') generic
      type is (integer(kind=int16));    write(line(istart:),'(i0)') generic
      type is (integer(kind=int32));    write(line(istart:),'(i0)') generic
      type is (integer(kind=int64));    write(line(istart:),'(i0)') generic
      type is (real(kind=real32));      write(line(istart:),'(1pg0)') generic
      type is (real(kind=real64));      write(line(istart:),'(1pg0)') generic
      type is (real(kind=real128));     write(line(istart:),'(1pg0)') generic
      type is (logical);                write(line(istart:),'(1l)') generic
      type is (character(len=*));       write(line(istart:),'(a)') trim(generic)
      type is (complex);                write(line(istart:),'("(",1pg0,",",1pg0,")")') generic
   end select
   istart=len_trim(line)+increment
end subroutine print_generic
!===================================================================================================================================
end function msg_scalar
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
function msg_one(generic0,generic1, generic2, generic3, generic4, generic5, generic6, generic7, generic8, generic9,nospace)
implicit none

! ident_3="@(#)M_msg::msg_one(3fp): writes a message to a string composed of any standard one dimensional types"

class(*),intent(in)           :: generic0(:)
class(*),intent(in),optional  :: generic1(:), generic2(:), generic3(:), generic4(:), generic5(:)
class(*),intent(in),optional  :: generic6(:), generic7(:), generic8(:), generic9(:)
logical,intent(in),optional   :: nospace
character(len=:), allocatable :: msg_one
character(len=4096)           :: line
integer                       :: istart
integer                       :: increment
   if(present(nospace))then
      if(nospace)then
         increment=1
      else
         increment=2
      endif
   else
      increment=2
   endif

   istart=1
   line=' '
   call print_generic(generic0)
   if(present(generic1))call print_generic(generic1)
   if(present(generic2))call print_generic(generic2)
   if(present(generic3))call print_generic(generic3)
   if(present(generic4))call print_generic(generic4)
   if(present(generic5))call print_generic(generic5)
   if(present(generic6))call print_generic(generic6)
   if(present(generic7))call print_generic(generic7)
   if(present(generic8))call print_generic(generic8)
   if(present(generic9))call print_generic(generic9)
   msg_one=trim(line)
contains
!===================================================================================================================================
subroutine print_generic(generic)
!use, intrinsic :: iso_fortran_env, only : int8, int16, int32, biggest=>int64, real32, real64, dp=>real128
use,intrinsic :: iso_fortran_env, only : int8, int16, int32, int64, real32, real64, real128
class(*),intent(in),optional :: generic(:)
integer :: i
   select type(generic)
      type is (integer(kind=int8));     write(line(istart:),'("[",*(i0,1x))') generic
      type is (integer(kind=int16));    write(line(istart:),'("[",*(i0,1x))') generic
      type is (integer(kind=int32));    write(line(istart:),'("[",*(i0,1x))') generic
      type is (integer(kind=int64));    write(line(istart:),'("[",*(i0,1x))') generic
      type is (real(kind=real32));      write(line(istart:),'("[",*(1pg0,1x))') generic
      type is (real(kind=real64));      write(line(istart:),'("[",*(1pg0,1x))') generic
      type is (real(kind=real128));     write(line(istart:),'("[",*(1pg0,1x))') generic
      !type is (real(kind=real256));     write(error_unit,'(1pg0)',advance='no') generic
      type is (logical);                write(line(istart:),'("[",*(1l,1x))') generic
      type is (character(len=*));       write(line(istart:),'("[",:*("""",a,"""",1x))') (trim(generic(i)),i=1,size(generic))
      type is (complex);                write(line(istart:),'("[",*("(",1pg0,",",1pg0,")",1x))') generic
      class default
         stop 'unknown type in *print_generic*'
   end select
   line=trim(line)//"]"
   istart=len_trim(line)+increment
end subroutine print_generic
!===================================================================================================================================
end function msg_one
!===================================================================================================================================
end module M_msg
