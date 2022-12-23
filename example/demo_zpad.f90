       program demo_zpad
        use M_strings, only : zpad
        implicit none
           write(*,'("[",a,"]")') zpad( '111', 5)
           write(*,'("[",a,"]")') zpad( '123456789', 5)
           write(*,'("[",a,"]")') zpad( '  34567  ', 7)
           write(*,'("[",a,"]")') zpad( valuein=42 , length=7)
       end program demo_zpad
