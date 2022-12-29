program check
use,intrinsic :: iso_fortran_env, only : compiler_version, compiler_options
use,intrinsic :: iso_fortran_env, only : stdin=>input_unit, stdout=>output_unit, stderr=>error_unit
use,intrinsic :: iso_fortran_env, only : ip => int32, int64, wp => real64
use M_strings, only : int, atoi
implicit none
character(len=*),parameter :: g='(*(g0))'
integer,parameter   :: n = 1000000 !! number of values
integer(ip)         :: ival_out(n)=0, ival(n)
integer             :: ierr, i, isum
integer(kind=int64) :: start, finish, count_rate
character(len=30),allocatable :: strings(:) 
real                :: run_time
real(kind=wp)       :: number
integer(kind=ip),parameter  :: first=0, last=huge(0_ip)

   write(*,'(a)')'CHECK atoi(3f) for int32'
   write(stdout,'("Compiler version :: ",a)') COMPILER_VERSION()
   write(stdout,'("Compiler options ::",a)') compiler_options()
   write(stdout,g)'huge: ',huge(0_ip)   

   ! create a list of values to parse
   allocate(strings(n))

   ! use random value to choose an integer from first to last 
   ! half positive and half negative
   do i = 1, n, 2
       call random_number(number)
       ival(i) = (last-first)*number+first
       write(strings(i),fmt=*)ival(i)
   enddo

   do i = 2, n, 2
       call random_number(number)
       ival(i) = -((last-first)*number+first)
       write(strings(i),fmt=*)ival(i)
   enddo

   write(*,*)'INTERNAL READ:'
   call system_clock(start, count_rate)
   do i = 1, n
       read(strings(i),fmt=*,iostat=ierr) ival_out(i)
   enddo
   call tally()

   write(*,*)'INT OVERLOAD:'
   call system_clock(start)
   do i = 1, n
       ival_out(i)=int(strings(i))
   enddo
   call tally()

   write(*,*)'ATOI:'
   call system_clock(start, count_rate)
   do i = 1, n
      ival_out(i)=atoi(strings(i))
   enddo
   call tally()

contains
subroutine tally()
   call system_clock(finish)
   run_time=(finish-start)/real(count_rate,wp)
   write(*,'(a30,1x,f7.4,1x,a)') 'time read   : ', run_time, ' seconds'
   ! compare results

   ! equality of internal read versus original value
   isum=0
   do i = 1, n
      if(ival(i).ne.ival_out(i)) then
         write(*,'(*(g0,5x))')'not equal',strings(i),ival(i),ival_out(i)
         isum=isum+1
      endif
   enddo
   write(*,g)'not equal is ',isum, ' out of ',n
end subroutine tally
end program check
