<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c191">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>value_to_string(3f)</b> - [M_strings:NUMERIC] return numeric string from a numeric value <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
subroutine <b>value_to_string</b>(value,chars[,ilen,ierr,fmt,trimz])
<br />
    character(len=*) :: chars  ! minimum of 23 characters required
    !--------
    ! VALUE may be any &lt;em&gt;one&lt;/em&gt; of the following types:
    doubleprecision,intent(in)               :: value
    real,intent(in)                          :: value
    integer,intent(in)                       :: value
    logical,intent(in)                       :: value
    !--------
    character(len=*),intent(out)             :: chars
    integer,intent(out),optional             :: ilen
    integer,optional                         :: ierr
    character(len=*),intent(in),optional     :: fmt
    logical,intent(in)                       :: trimz
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <p><b>value_to_string</b>(3f) returns a numeric representation of a numeric value in a string given a numeric value of type REAL, DOUBLEPRECISION,
        INTEGER or LOGICAL. It creates the string using internal writes. It then removes trailing zeros from non-zero values, and left-justifies the
        string.</p>
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c192" width="6%" nowrap="nowrap">VALUE</td>
            <td valign="bottom">input value to be converted to a string</td>
          </tr>
          <tr valign="top">
            <td class="c192" width="6%" nowrap="nowrap">FMT</td>
            <td valign="bottom">You may specify a specific format that produces a string up to the length of CHARS; optional.</td>
          </tr>
          <tr valign="top">
            <td class="c192" width="6%" nowrap="nowrap">TRIMZ</td>
            <td valign="bottom">If a format is supplied the default is not to try to trim trailing zeros. Set TRIMZ to .true. to trim zeros from a string
            assumed to represent a simple numeric value.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c192" width="6%" nowrap="nowrap">CHARS</td>
            <td valign="bottom">returned string representing input value, must be at least 23 characters long; or what is required by optional FMT if
            longer.</td>
          </tr>
          <tr valign="top">
            <td class="c192" width="6%" nowrap="nowrap">ILEN</td>
            <td valign="bottom">position of last non-blank character in returned string; optional.</td>
          </tr>
          <tr valign="top">
            <td class="c192" width="6%" nowrap="nowrap">IERR</td>
            <td valign="bottom">If not zero, error occurred; optional.</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample program:
        <pre>
     program demo_value_to_string
     use M_strings, only: value_to_string
     implicit none
     character(len=80) :: string
     integer           :: ilen
        call value_to_string(3.0/4.0,string,ilen)
        write(*,*) 'The value is [',string(:ilen),']'
<br />
        call value_to_string(3.0/4.0,string,ilen,fmt='')
        write(*,*) 'The value is [',string(:ilen),']'
<br />
        call value_to_string(3.0/4.0,string,ilen,fmt='("THE VALUE IS ",g0)')
        write(*,*) 'The value is [',string(:ilen),']'
<br />
        call value_to_string(1234,string,ilen)
        write(*,*) 'The value is [',string(:ilen),']'
<br />
        call value_to_string(1.0d0/3.0d0,string,ilen)
        write(*,*) 'The value is [',string(:ilen),']'
<br />
     end program demo_value_to_string
<br />
</pre>Expected output
        <pre>
    The value is [0.75]
    The value is [      0.7500000000]
    The value is [THE VALUE IS .750000000]
    The value is [1234]
    The value is [0.33333333333333331]
<br />
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
