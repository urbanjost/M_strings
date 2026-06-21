program bench
  ! Compares the run-time of the split subroutine and a string_tokens function
  ! when applied on a long string.
  use M_strings, only: split2020, string_tokens
  implicit none
  character(6000000) :: string
  character(80) :: line
  character(:), allocatable :: tokens(:)
  integer :: n, p1, p2, u
  real :: t1, t2
  real, allocatable :: elapsed(:)

  string = ''
  p1 = 1

  open(newunit=u, file='war_and_peace.txt', status='old', action='read')
  do
    read(u, fmt='(a)', end=1) line
    p2 = p1 + len_trim(line) - 1
    string(p1:p2) = trim(line)
    p1 = p2 + 2
  end do
  1 close(u)

  elapsed = [real ::]
  do n = 1, 5
    call cpu_time(t1)
    call split2020(string, ' ', tokens)
    call cpu_time(t2)
    elapsed = [elapsed, t2 - t1]
    deallocate(tokens)
  end do
  print *, 'split subroutine, elapsed', &
           sum(elapsed) / size(elapsed), 'seconds'

  elapsed = [real ::]
  do n = 1, 5
    call cpu_time(t1)
    tokens = string_tokens(string, ' ')
    call cpu_time(t2)
    elapsed = [elapsed, t2 - t1]
    deallocate(tokens)
  end do
  print *, 'string_tokens function, elapsed', &
           sum(elapsed) / size(elapsed), 'seconds'

end program bench
