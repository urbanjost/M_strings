     program demo_string_to_value
      use M_strings, only: string_to_value
      implicit none
      real                          :: value
      integer                       :: i
      integer                       :: ierr
      character(len=80),allocatable :: string(:)
         string=[character(len=80) :: &
                 ' -40.5e-2 ',&
                 'U+FF      ',&
                 '16#ff     ',&
                 'zFF       ',&
                 '255       ',&
                 'hFF       ',&
                 'oFF       ']

         do i=1,size(string)
            call string_to_value(string(i),value,ierr)
            write(*,*) 'value of string ['//trim(string(i))//'] is ',value
         enddo
     end program demo_string_to_value
