     program demo_unquote
        use M_strings, only : unquote
        implicit none
        character(len=128)           :: quoted_str
        character(len=:),allocatable :: unquoted_str
        character(len=1),parameter   :: esc='\'
        character(len=1024)          :: iomsg
        integer                      :: iostat
        character(len=1024)          :: dummy
        do
           write(*,'(a)',advance='no')'Enter test string:'
           read(*,'(a)',iostat=iostat,iomsg=iomsg)quoted_str
           if(iostat /= 0)then
              write(*,*)trim(iomsg)
              exit
           endif

           ! the original string
           write(*,'(a)')'QUOTED       ['//trim(quoted_str)//']'

           ! the string processed by unquote(3f)
           unquoted_str=unquote(trim(quoted_str),esc)
           write(*,'(a)')'UNQUOTED     ['//unquoted_str//']'

           ! read the string list-directed to compare the results
           read(quoted_str,*,iostat=iostat,iomsg=iomsg)dummy
           if(iostat /= 0)then
              write(*,*)trim(iomsg)
           else
              write(*,'(a)')'LIST DIRECTED['//trim(dummy)//']'
           endif
        enddo
     end program demo_unquote
