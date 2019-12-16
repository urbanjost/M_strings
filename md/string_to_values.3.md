<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c156">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>string_to_values(3f)</b> - [M_strings:NUMERIC] read a string representing numbers into a numeric array <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
subroutine <b>string_to_values</b>(line,iread,values,inums,delims,ierr)
<br />
       character(len=*) :: line
       integer          :: iread
       real             :: values(*)
       integer          :: inums
       character(len=*) :: delims
       integer          :: ierr
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        This routine can take a string representing a series of numbers and convert it to a numeric array and return how many numbers were found.
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c157" width="6%" nowrap="nowrap">LINE</td>
            <td valign="bottom">Input string containing numbers</td>
          </tr>
          <tr valign="top">
            <td class="c157" width="6%" nowrap="nowrap">IREAD</td>
            <td valign="bottom">maximum number of values to try to read from input string</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RESULTS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c157" width="6%" nowrap="nowrap">VALUES</td>
            <td valign="bottom">real array to be filled with numbers</td>
          </tr>
          <tr valign="top">
            <td class="c157" width="6%" nowrap="nowrap">INUMS</td>
            <td valign="bottom">number of values successfully read (before error occurs if one does)</td>
          </tr>
          <tr valign="top">
            <td class="c157" width="6%" nowrap="nowrap">DELIMS</td>
            <td valign="bottom">delimiter <b>character</b>(s), usually a space. must not be a null string. If more than one character, a space must not be
            the last character or it will be ignored.</td>
          </tr>
          <tr valign="top">
            <td class="c157" width="6%" nowrap="nowrap">IERR</td>
            <td valign="bottom">error flag (0=no error, else column number string starts at that error occurred on).</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample Program:
        <pre>
     program demo_string_to_values
      use M_strings, only : string_to_values
      character(len=80)  :: s=' 10 20e3;3.45 -400.3e-2;1234; 5678 '
      integer,parameter  :: isz=10
      real               :: array(isz)
<br />
      call string_to_values(s,10,array,inums,' ;',ierr)
      call reportit()
<br />
      call string_to_values('10;2.3;3.1416',isz,array,inums,' ;',ierr)
      call reportit()
<br />
      contains
         subroutine reportit()
            write(*,*)'string_to_values:'
            write(*,*)'input string.............',trim(s)
            write(*,*)'number of values found...',inums
            write(*,*)'values...................',(array(ii),ii=1,inums)
         end subroutine reportit
     end program demo_string_to_values
<br />
</pre>Expected output
        <pre>
    string_to_values:
    input string............. 10 20e3;3.45 -400.3e-2;1234; 5678
    number of values found...           6
    values...................   10.0000000  20000.0000  3.45000005  -4.00299978  1234.00000  5678.00000
    string_to_values:
    input string............. 10 20e3;3.45 -400.3e-2;1234; 5678
    number of values found...           3
    values...................   10.0000000  2.29999995  3.14159989
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
