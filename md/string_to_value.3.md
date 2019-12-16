<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c152">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>string_to_value(3f)</b> - [M_strings:NUMERIC] subroutine returns numeric value from string <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
subroutine <b>string_to_value</b>(chars,valu,ierr)
<br />
    character(len=*),intent(in)              :: chars   ! input string
    integer|real|doubleprecision,intent(out) :: valu
    integer,intent(out)                      :: ierr
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        returns a numeric value from a numeric character string.
        <p>works with any g-format input, including integer, real, and exponential. If the input string begins with "B", "Z", or "O" and otherwise
        represents a positive whole number it is assumed to be a binary, hexadecimal, or octal value. If the string contains commas they are removed. If the
        string is of the form NN:MMM... or NN#MMM then NN is assumed to be the base of the whole number.</p>
        <p>if an error occurs in the READ, IOSTAT is returned in IERR and value is set to zero. if no error occurs, IERR=0.</p>
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c153" width="6%" nowrap="nowrap">CHARS</td>
            <td valign="bottom">input string to read numeric value from</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c153" width="6%" nowrap="nowrap">VALU</td>
            <td valign="bottom">numeric value returned. May be INTEGER, REAL, or DOUBLEPRECISION.</td>
          </tr>
          <tr valign="top">
            <td class="c153" width="6%" nowrap="nowrap">IERR</td>
            <td valign="bottom">error flag (0 == no error)</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample Program:
        <pre>
   program demo_string_to_value
    use M_strings, only: string_to_value
    character(len=80) :: string
       string=' -40.5e-2 '
       call string_to_value(string,value,ierr)
       write(*,*) 'value of string ['//trim(string)//'] is ',value
   end program demo_string_to_value
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
