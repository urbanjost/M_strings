       program demo_zpad
        use M_strings, only : zpad
        implicit none
        integer :: lun, i
           write(*,'("[",a,"]")') zpad( '111', 5)
           write(*,'("[",a,"]")') zpad( '123456789', 5)
           write(*,'("[",a,"]")') zpad( '  34567  ', 7)
           write(*,'("[",a,"]")') zpad( valuein=42 , length=7)

           ! open output_00085.dat
           i=85
           open(newunit=lun,file='output_'//zpad(i,5)//'.dat')
           close(unit=lun,status='delete')

       end program demo_zpad
