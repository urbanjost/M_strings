          program demo_switch
          use M_strings, only : switch, isalpha, islower, nospace
          character(len=*),parameter :: dashes='-----------------------------------'
          character(len=*),parameter :: string='This is a string of letters'
          character(len=1024)        :: line

          ! First, examples of standard Fortran features
          write(*,*)['A','=','=','=','=','='].eq.'='      ! returns array [F,T,T,T,T,T]
          write(*,*)all(['=','=','=','=','=','='].eq.'=') ! this would return T
          write(*,*)all(['A','=','=','=','=','='].eq.'=') ! this would return F

          ! so to test if the string DASHES is all dashes using SWITCH(3f) is
          if(all(switch(dashes).eq.'-'))then
             write(*,*)'DASHES is all dashes'
          endif

          ! so to test is a string is all letters
          ! isalpha(3f) returns .true. only if character is a letter
          write(*,*) all(isalpha(switch(dashes)))  ! false because dashes are not a letter
          write(*,*) all(isalpha(switch(string)))  ! false because of spaces
          write(*,*) all(isalpha(switch(nospace(string))))  ! true because removed whitespace

          ! to see if a string is all uppercase
          write(*,*) string                           ! show the string
          write(*,'(1x,*("[",a,"]":))') switch(string)   ! converted to character array
          write(*,'(*(l3))') islower(switch(string))

          line=nospace(string)                        ! we need a string that is all letters
          write(*,*)'LINE=',trim(line)
          write(*,*) islower(switch(nospace(string))) ! all true except first character
          write(*,*) all(islower(switch(nospace(string))))      ! should be false
          write(*,*) all(islower(switch(nospace(string(2:)))))  ! should be true

          end program demo_switch
