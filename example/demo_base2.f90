       program demo_base2
       use M_strings, only : base2
       implicit none
          write(*,'(a)') base2(huge(0))
          write(*,'(a)') base2(0)
          write(*,'(a)') base2(64)
          write(*,'(a)') base2(-64)
          write(*,'(a)') base2(-huge(0)-1)
       end program demo_base2
