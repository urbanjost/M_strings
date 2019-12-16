<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c168">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>switch(3f)</b> - [M_strings:ARRAY] converts between CHARACTER scalar and array of single characters <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="6">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
<br />
<b>pure</b> <i>function</i> <b>switch</b>(array) <i>result</i> (<i>(string)</i>)
<br />
    character(len=1),intent(in) :: array(:)
    character(len=SIZE(array))  :: string
<br />
     or
<br />
</pre><b>pure</b> <i>function</i> <b>switch</b>(<i>(string)</i>) <i>result</i> (<i>(array)</i>)
        <pre>
    character(len=1),intent(in) :: array(:)
    character(len=SIZE(array))  :: string
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <p><b>SWITCH</b>(3f): generic <i>function</i> that switches CHARACTER <i>(string)</i> to an <i>(array)</i> of single characters or an <i>(array)</i>
        of single characters to a CHARACTER <i>(string)</i>. Useful in passing strings to C. New Fortran features may supersede these routines.</p>
      </blockquote>
      <p><a name="3"></a></p>
      <h3><a name="3">EXAMPLES</a></h3>
      <blockquote>
        <p>Sample program:</p>
        <pre>
   program demo_switch
   use M_strings, only : switch, isalpha, islower, nospace
   character(len=*),parameter :: dashes='-----------------------------------'
   character(len=*),parameter :: string='This is a string of letters'
   character(len=1024)        :: line
<br />
   ! First, examples of standard Fortran features
   write(*,*)['A','=','=','=','=','='].eq.'='      ! returns array [F,T,T,T,T,T]
   write(*,*)all(['=','=','=','=','=','='].eq.'=') ! this would return T
   write(*,*)all(['A','=','=','=','=','='].eq.'=') ! this would return F
<br />
   ! so to test if the string DASHES is all dashes using SWITCH(3f) is
   if(all(switch(dashes).eq.'-'))then
      write(*,*)'DASHES is all dashes'
   endif
<br />
   ! so to test is a string is all letters
   ! isalpha(3f) returns .true. only if character is a letter
   write(*,*) all(isalpha(switch(dashes)))  ! false because dashes are not a letter
   write(*,*) all(isalpha(switch(string)))  ! false because of spaces
   write(*,*) all(isalpha(switch(nospace(string))))  ! true because removed whitespace
<br />
   ! to see if a string is all uppercase
   write(*,*) string                           ! show the string
   write(*,'(1x,*("[",a,"]":))') switch(string)   ! converted to character array
   write(*,'(*(l3))') islower(switch(string))
<br />
   line=nospace(string)                        ! we need a string that is all letters
   write(*,*)'LINE=',trim(line)
   write(*,*) islower(switch(nospace(string))) ! all true except first character
   write(*,*) all(islower(switch(nospace(string))))      ! should be false
   write(*,*) all(islower(switch(nospace(string(2:)))))  ! should be true
<br />
   end program demo_switch
<br />
</pre>Expected output
        <pre>
   &gt;  F T T T T T
   &gt;  T
   &gt;  F
   &gt;  DASHES is all dashes
   &gt;  F
   &gt;  F
   &gt;  T
   &gt;  This is a string of letters
   &gt;  [T][h][i][s][ ][i][s][ ][a][ ][s][t][r][i][n][g][ ][o][f][ ][l][e][t][t][e][r][s]
   &gt;   F  T  T  T  F  T  T  F  T  F  T  T  T  T  T  T  F  T  T  F  T  T  T  T  T  T  T
   &gt;  LINE=Thisisastringofletters
   &gt;  F T T T T T T T T T T T T T T T T T T T T T
   &gt;  F
   &gt;  T
</pre>
      </blockquote><a name="4"></a>
    </div>
  </div>
</body>
