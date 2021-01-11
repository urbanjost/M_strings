program bench
use M_strings, only :: upper
! Compares the run-time of the upper function when applied on a long string.
implicit none
character(6000000) :: string, aftermath
character(80) :: line
integer :: n, p1, p2, u, i, ios
real :: t1, t2
real, allocatable :: elapsed(:)

   string = ''
   p1 = 1
   ! load file
   open(newunit=u, file='war_and_peace.txt', status='old', action='read')
   do
     read(u, fmt='(a)', iostat=ios) line
     if(ios.ne.0)exit
     p2 = p1 + len_trim(line) - 1
     string(p1:p2) = trim(line)
     p1 = p2 + 2
   enddo
   close(u)

   elapsed = [real ::]
   do n = 1, 15
     call cpu_time(t1)
     aftermath=upper(string)
     call cpu_time(t2)
     elapsed = [elapsed, t2 - t1]
   enddo
   print *, 'upper function, elapsed',new_line('A'), &
            (elapsed(i), 'seconds', new_line('A'),i=1,size(elapsed)), &
            new_line('A'),'AVERAGE',new_line('A'), &
            sum(elapsed) / size(elapsed), 'seconds'
end program bench
