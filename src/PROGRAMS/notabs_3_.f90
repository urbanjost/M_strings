          program demo_notabs

          !  test filter to remove tabs and trailing white space from input
          !  on files up to 1024 characters wide
          use M_strings, only : notabs
          character(len=1024) :: in,out
          integer             :: ios,iout
             READFILE: block
                do
                   read(*,'(A)',iostat=ios)in
                   if(ios /= 0) exit READFILE
                   call notabs(in,out,iout)
                   write(*,'(a)')out(:iout)
                enddo
             endblock READFILE

          end program demo_notabs
