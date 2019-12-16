          program demo_base
          use M_strings, only : base
          implicit none
          integer           :: ba,bd
	  integer           :: ios
          character(len=40) :: x,y

          print *,' BASE CONVERSION'
          write(*,'("Start   Base (2 to 36): ")',advance='no')
	  read(*,*,iostat=ios) bd
	  if(ios.ne.0)stop
          write(*,'("Arrival Base (2 to 36): ")',advance='no')
	  read(*,*,iostat=ios) ba
	  if(ios.ne.0)stop
          INFINITE: do
             write(*,'("Enter number in start base: ")',advance='no')
	     read(*,*,iostat=ios) x
	     if(ios.ne.0)exit
             if(x.eq.'0') exit INFINITE
             if(base(x,bd,y,ba))then
                  write(*,'("In base ",I2,": ",A20)')  ba, y
              else
                print *,'Error in decoding/encoding number.'
              endif
           enddo INFINITE

           end program demo_base
