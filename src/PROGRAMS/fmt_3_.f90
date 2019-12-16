          program demo_fmt
          use M_strings, only : fmt
          character(len=80),allocatable :: paragraph(:)
          character(len=*),parameter    :: string= '&
           &one two three four five &
           &six seven eight &
           &nine ten eleven twelve &
           &thirteen fourteen fifteen sixteen &
           &seventeen'

          paragraph=fmt(string,40)
          write(*,'(a)')paragraph

          write(*,'(a)')fmt(string,0)
          write(*,'(3x,a)')fmt(string,77)

          end program demo_fmt
