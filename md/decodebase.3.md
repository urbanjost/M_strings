<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c27">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>decodebase(3f)</b> - [M_strings:BASE] convert whole number string in base [2-36] to base 10 number <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="7">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
logical function <b>decodebase</b>(string,basein,out10)
<br />
   character(len=*),intent(in)  :: string
   integer,intent(in)           :: basein
   integer,intent(out)          :: out10
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <p>Convert a numeric string representing a whole number in base BASEIN to base 10. The function returns FALSE if BASEIN is not in the range [2..36]
        or if string STRING contains invalid characters in base BASEIN or if result OUT10 is too big</p>
        <p>The letters A,B,...,Z represent 10,11,...,36 in the base &gt; 10.</p>
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c28" width="6%" nowrap="nowrap">string</td>
            <td valign="bottom">input string. It represents a whole number in the base specified by BASEIN unless BASEIN is set to zero. When BASEIN is zero
            STRING is assumed to be of the form BASE#VALUE where BASE represents the function normally provided by BASEIN.</td>
          </tr>
          <tr valign="top">
            <td class="c28" width="6%" nowrap="nowrap">basein</td>
            <td valign="bottom">base of input string; either 0 or from 2 to 36.</td>
          </tr>
          <tr valign="top">
            <td class="c28" width="6%" nowrap="nowrap">out10</td>
            <td valign="bottom">output value in base 10</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">EXAMPLE</a></h3>
      <blockquote>
        Sample program:
        <pre>
   program demo_decodebase
   use M_strings, only : codebase, decodebase
   implicit none
   integer           :: ba,bd
   character(len=40) :: x,y
   integer           :: r
<br />
   print *,' BASE CONVERSION'
   write(*,'("Start   Base (2 to 36): ")',advance='no'); read *, bd
   write(*,'("Arrival Base (2 to 36): ")',advance='no'); read *, ba
   INFINITE: do
      print *,''
      write(*,'("Enter number in start base: ")',advance='no'); read *, x
      if(x.eq.'0') exit INFINITE
      if(decodebase(x,bd,r)) then
         if(codebase(r,ba,y)) then
           write(*,'("In base ",I2,": ",A20)')  ba, y
         else
           print *,'Error in coding number.'
         endif
      else
         print *,'Error in decoding number.'
      endif
   enddo INFINITE
<br />
   end program demo_decodebase
<br />
</pre>
      </blockquote><a name="5"></a>
    </div>
  </div>
</body>
