<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c46">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>getvals(3f)</b> - [M_strings:NUMERIC] read arbitrary number of REAL values from a character variable up to size of <b>VALUES</b>() array
        <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
subroutine <b>getvals</b>(line,values,icount,ierr)
<br />
    character(len=*),intent(in)  :: line
    class(*),intent(out)         :: values(:)
    integer,intent(out)          :: icount
    integer,intent(out),optional :: ierr
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <p><b>GETVALS</b>(3f) reads a relatively arbitrary number of numeric values from a character variable into a REAL array using list-directed
        input.</p>
        <p>NOTE: In this version null values are skipped instead of meaning to leave that value unchanged</p>
        <blockquote>
          <p>1,,,,,,,2 / reads VALUES=[1.0,2.0]</p>
        </blockquote>
        <p>Per list-directed rules when reading values, allowed delimiters are comma, semi-colon and space.</p>
        <p>the slash separator can be used to add inline comments.</p>
        <pre>
       10.1, 20.43e-1 ; 11 / THIS IS TREATED AS A COMMENT
<br />
</pre>Repeat syntax can be used up to the size of the output array. These are equivalent input lines:
        <pre>
       4*10.0
       10.0, 10.0, 10.0, 10.0
<br />
</pre>
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c47" width="6%" nowrap="nowrap">LINE</td>
            <td valign="bottom">A character variable containing the characters representing a list of numbers</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td colspan="1"><b>VALUES</b>()</td>
            <td>array holding numbers read from string. May be of type INTEGER, REAL, DOUBLEPRECISION, or CHARACTER. If CHARACTER the strings are returned
            as simple words instead of numeric values.</td>
          </tr>
          <tr valign="top">
            <td class="c47" width="6%" nowrap="nowrap">ICOUNT</td>
            <td valign="bottom">number of defined numbers in <b>VALUES</b>(). If ICOUNT reaches the size of the <b>VALUES</b>() array parsing stops.</td>
          </tr>
          <tr valign="top">
            <td class="c47" width="6%" nowrap="nowrap">IERR</td>
            <td valign="bottom">zero if no error occurred in reading numbers. Optional. If not present and an error occurs the program is terminated.</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLES</a></h3>
      <blockquote>
        Sample program:
        <pre>
      program demo_getvals
      use M_strings, only: getvals
      implicit none
      integer,parameter  :: longest_line=256
      character(len=longest_line) :: line
      real               :: values(longest_line/2+1)
      integer            :: ios,icount,ierr
      INFINITE: do
         read(*,'(a)',iostat=ios) line
         if(ios.ne.0)exit INFINITE
         call getvals(line,values,icount,ierr)
         write(*,*)'VALUES=',values(:icount)
      enddo INFINITE
      end program demo_getvals
<br />
</pre>Sample input lines
        <pre>
       10,20 30.4
       1 2 3
       1
<br />
       3 4*2.5 8
       32.3333 / comment 1
       30e3;300,    30.0, 3
       even 1 like this! 10
       11,,,,22,,,,33
<br />
</pre>Expected output:
        <pre>
      VALUES=   10.0000000       20.0000000       30.3999996
      VALUES=   1.00000000       2.00000000       3.00000000
      VALUES=   1.00000000
      VALUES=
      VALUES=   3.00000000       2.50000000       2.50000000       2.50000000       2.50000000       8.00000000
      VALUES=   32.3333015
      VALUES=   30000.0000       300.000000       30.0000000       3.00000000
      *getvals* WARNING:[even] is not a number
      *getvals* WARNING:[like] is not a number
      *getvals* WARNING:[this!] is not a number
      VALUES=   1.00000000       10.0000000
      VALUES=   11.0000000       22.0000000       33.0000000
<br />
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
