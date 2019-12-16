<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c140">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>s2vs(3f)</b> - [M_strings:NUMERIC] given a string representing numbers return a numeric array <b>(LICENSE:PD)</b>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>s2vs</b>(line[,delim])
<br />
       character(len=*) :: line
       doubleprecision,allocatable :: s2vs(:)
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <p>The function <b>S2VS</b>(3f) takes a string representing a series of numbers and converts it to a numeric doubleprecision array. The string
        values may be delimited by spaces, semi-colons, and commas by default.</p>
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c141" width="6%" nowrap="nowrap">LINE</td>
            <td valign="bottom">Input string containing numbers</td>
          </tr>
          <tr valign="top">
            <td class="c141" width="6%" nowrap="nowrap">DELIM</td>
            <td valign="bottom">optional list of delimiter characters. If a space is included, it should appear as the left-most character in the list. The
            default is " ;," (spaces, semi-colons, and commas).</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RESULTS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c141" width="6%" nowrap="nowrap">S2VS</td>
            <td valign="bottom">doubleprecision array</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample Program:
        <pre>
     program demo_s2vs
     use M_strings, only : s2vs
     character(len=80)           :: s=' 10 20e3;3.45 -400.3e-2;1234; 5678 '
     doubleprecision,allocatable :: values(:)
     integer,allocatable         :: ivalues(:)
<br />
     values=s2vs(s)
     ivalues=int(s2vs(s))
     call reportit()
<br />
     contains
       subroutine reportit()
         write(*,*)'S2VS:'
         write(*,*)'input string.............',trim(s)
         write(*,*)'number of values found...',size(values)
         write(*,*)'values...................',(values(ii),ii=1,size(values))
         write(*,*)'ivalues..................',(ivalues(ii),ii=1,size(values))
       end subroutine reportit
     end program demo_s2vs
<br />
</pre>
        <blockquote>
          Expected output
          <pre>
    S2VS:
    input string............. 10 20e3;3.45 -400.3e-2;1234; 5678
    number of values found... 6
    values................... 10.000000000000000  20000.000000000000 3.4500000000000002
    -4.0030000000000001       1234.0000000000000  5678.0000000000000
    ivalues.................. 10  20000  3  -4 1234 5678
</pre>
        </blockquote>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
