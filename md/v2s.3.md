<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c187">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>v2s(3f)</b> - [M_strings:NUMERIC] return numeric string from a numeric value <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>v2s</b>(<i>value</i>) <b>result</b>(<i>outstr</i>)
<br />
       integer|real|doubleprecision|logical,intent(in ) :: value
       character(len=:),allocatable :: outstr
       character(len=*),optional,intent(in) :: fmt
<br />
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <p><b>v2s</b>(3f) returns a representation of a numeric <i>value</i> as a string when given a numeric <i>value</i> of type REAL, DOUBLEPRECISION,
        INTEGER or LOGICAL. It creates the strings using internal <b>WRITE</b>() statements. Trailing zeros are removed from non-zero values, and the string
        is left-justified.</p>
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c188" width="6%" nowrap="nowrap">VALUE</td>
            <td valign="bottom">input <i>value</i> to be converted to a string</td>
          </tr>
          <tr valign="top">
            <td class="c188" width="6%" nowrap="nowrap">FMT</td>
            <td valign="bottom">format can be explicitly given, but is limited to generating a string of eighty or less characters.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c188" width="6%" nowrap="nowrap">OUTSTR</td>
            <td valign="bottom">returned string representing input <i>value</i>,</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample Program:
        <pre>
   program demo_v2s
   use M_strings, only: v2s
   write(*,*) 'The value of 3.0/4.0 is ['//v2s(3.0/4.0)//']'
   write(*,*) 'The value of 1234    is ['//v2s(1234)//']'
   write(*,*) 'The value of 0d0     is ['//v2s(0d0)//']'
   write(*,*) 'The value of .false. is ['//v2s(.false.)//']'
   write(*,*) 'The value of .true. is  ['//v2s(.true.)//']'
   end program demo_v2s
<br />
</pre>Expected output
        <pre>
    The value of 3.0/4.0 is [0.75]
    The value of 1234    is [1234]
    The value of 0d0     is [0]
    The value of .false. is [F]
    The value of .true. is  [T]
<br />
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
