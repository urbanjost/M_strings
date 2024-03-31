     program demo_expand
        use M_strings, only : expand
        integer,parameter     :: iwidth=1024
        integer               :: i
        character(len=iwidth),parameter :: input(*)=[ character(len=iwidth) :: &
           '\e[H\e[2J',&
           '\tABC\tabc',&
           '\tA\a',&
           '\nONE\nTWO\nTHREE',&
           '\\']
           write(*,'(a)')(trim(expand(input(i))),i=1,size(input))
     end program demo_expand
