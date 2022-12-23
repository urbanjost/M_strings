     program demo_atleast
      use M_strings, only : atleast
      implicit none
      character(len=10)            :: string='abcdefghij'
      character(len=:),allocatable :: answer
      integer                      :: i
      character(len=*),parameter   :: g='(*(g0))'
         answer=atleast(string,5)
         write(*,'("[",a,"]")') answer
         answer=atleast(string,20)
         write(*,'("[",a,"]")') answer
         i=30
         write(*,g)
         write(*,'(1x,a,1x,i0)') &
          & atleast('CHAPTER 1 : The beginning ',i,'.'), 1   , &
          & atleast('CHAPTER 2 : The end ',i,'.'),       1234, &
          & atleast('APPENDIX ',i,'.'),                  1235
         write(*,*)
         write(*,'(1x,a,i7)') &
          & atleast('CHAPTER 1 : The beginning ',i,'.'), 1   , &
          & atleast('CHAPTER 2 : The end ',i,'.'),       1234, &
          & atleast('APPENDIX ',i,'.'),                  1235

          write(*,g)atleast('12',5,'0',right=.false.)
     end program demo_atleast
