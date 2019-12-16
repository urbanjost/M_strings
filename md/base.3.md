<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c5">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>base(3f)</b> - [M_strings:BASE] convert whole number string in base [2-36] to string in alternate base [2-36] <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="7">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
logical function <b>base</b>(x,b,y,a)
<br />
   character(len=*),intent(in)  :: x
   character(len=*),intent(out) :: y
   integer,intent(in)           :: b,a
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <p>Convert a numeric string from base B to base A. The function returns FALSE if B is not in the range [2..36] or if string X contains invalid
        characters in base B or if result Y is too big</p>
        <p>The letters A,B,...,Z represent 10,11,...,36 in the base &gt; 10.</p>
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c6" width="6%" nowrap="nowrap">x</td>
            <td valign="bottom">input string representing numeric whole value</td>
          </tr>
          <tr valign="top">
            <td class="c6" width="6%" nowrap="nowrap">b</td>
            <td valign="bottom">assumed base of input string</td>
          </tr>
          <tr valign="top">
            <td class="c6" width="6%" nowrap="nowrap">y</td>
            <td valign="bottom">output string</td>
          </tr>
          <tr valign="top">
            <td class="c6" width="6%" nowrap="nowrap">a</td>
            <td valign="bottom">base specified for output string</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">EXAMPLE</a></h3>
      <blockquote>
        Sample program:
        <pre>
   program demo_base
   use M_strings, only : base
   implicit none
   integer           :: ba,bd
   character(len=40) :: x,y
<br />
   print *,' BASE CONVERSION'
   write(*,'("Start   Base (2 to 36): ")',advance='no'); read *, bd
   write(*,'("Arrival Base (2 to 36): ")',advance='no'); read *, ba
   INFINITE: do
      write(*,'("Enter number in start base: ")',advance='no'); read *, x
      if(x.eq.'0') exit INFINITE
      if(base(x,bd,y,ba))then
           write(*,'("In base ",I2,": ",A20)')  ba, y
       else
         print *,'Error in decoding/encoding number.'
       endif
    enddo INFINITE
<br />
    end program demo_base
<br />
</pre>
      </blockquote><a name="5"></a>
    </div>
  </div>
</body>
