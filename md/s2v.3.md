<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c136">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>s2v(3f)</b> - [M_strings:NUMERIC] function returns doubleprecision numeric value from a string <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>s2v</b>(string[,ierr][,onerr])
<br />
    character(len=*)             :: string
    doubleprecision              :: s2v
    integer,intent(out),optional :: ierr
    class(*),intent(in),optional :: onerr
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        This function converts a string to a DOUBLEPRECISION numeric value.
        <p>The intrinsics <b>INT</b>(3f), <b>REAL</b>(3f), and <b>DBLE</b>(3f) are also extended to take CHARACTER variables. The KIND= keyword is not
        supported on the extensions.</p>
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c137" width="6%" nowrap="nowrap">string</td>
            <td valign="bottom">holds string assumed to represent a numeric value</td>
          </tr>
          <tr valign="top">
            <td class="c137" width="6%" nowrap="nowrap">ierr</td>
            <td valign="bottom">If an error occurs the program is stopped if the optional parameter IERR is not present. If IERR returns a non-zero value an
            error occurred.</td>
          </tr>
          <tr valign="top">
            <td class="c137" width="6%" nowrap="nowrap">onerr</td>
            <td valign="bottom">The value to return on error. A value of zero (NaN) is returned on error by default.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      <blockquote>
        s2v
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample Program:
        <pre>
   program demo_s2v
<br />
    use M_strings, only: s2v, int, real, dble
    implicit none
    character(len=8)              :: s=' 10.345 '
    integer                       :: i
    character(len=14),allocatable :: strings(:)
    doubleprecision               :: dv
    integer                       :: errnum
<br />
    ! different strings representing INTEGER, REAL, and DOUBLEPRECISION
    strings=[&amp;
    &amp;' 10.345       ',&amp;
    &amp;'+10           ',&amp;
    &amp;'    -3        ',&amp;
    &amp;'    -4.94e-2  ',&amp;
    &amp;'0.1           ',&amp;
    &amp;'12345.678910d0',&amp;
    &amp;'              ',&amp; ! Note: will return zero without an error message
    &amp;'1 2 1 2 1 . 0 ',&amp; ! Note: spaces will be ignored
    &amp;'WHAT?         ']  ! Note: error messages will appear, zero returned
<br />
    ! a numeric value is returned, so it can be used in numeric expression
    write(*,*) '1/2 value of string is ',s2v(s)/2.0d0
    write(*,*)
    write(*,*)' STRING            VALUE                    ERROR_NUMBER'
    do i=1,size(strings)
       ! Note: not a good idea to use s2v(3f) in a WRITE(3f) statement,
       ! as it does I/O when errors occur, so called on a separate line
       dv=s2v(strings(i),errnum)
       write(*,*) strings(i)//'=',dv,errnum
    enddo
    write(*,*)"Extended intrinsics"
    write(*,*)'given inputs:',s,strings(:8)
    write(*,*)'INT(3f):',int(s),int(strings(:8))
    write(*,*)'REAL(3f):',real(s),real(strings(:8))
    write(*,*)'DBLE(3f):',dble(s),dble(strings(:8))
    write(*,*)"That's all folks!"
<br />
    end program demo_s2v
<br />
</pre>
        <blockquote>
          Expected output
          <pre>
    &gt;1/2 value of string is    5.1725000000000003
    &gt;
    &gt; STRING            VALUE                    ERROR_NUMBER
    &gt; 10.345       =   10.345000000000001                0
    &gt;+10           =   10.000000000000000                0
    &gt;    -3        =  -3.0000000000000000                0
    &gt;    -4.94e-2  =  -4.9399999999999999E-002           0
    &gt;0.1           =  0.10000000000000001                0
    &gt;12345.678910d0=   12345.678910000001                0
    &gt;              =   0.0000000000000000                0
    &gt;1 2 1 2 1 . 0 =   12121.000000000000                0
    &gt;*a2d* - cannot produce number from string [WHAT?]
    &gt;*a2d* - [Bad value during floating point read]
    &gt;WHAT?         =   0.0000000000000000             5010
    &gt;Extended intrinsics
    &gt;given inputs: 10.345 10.345 +10 -3 -4.94e-2 0.1 12345.678910d0 1 2 1 2 1 . 0
    &gt;INT(3f): 10 10 10 -3 0 0 12345 0 12121
    &gt;REAL(3f): 10.3450003 10.3450003 10.0000000 -3.00000000 -4.94000018E-02
    &gt;          0.100000001 12345.6787 0.00000000 12121.0000
    &gt;DBLE(3f): 10.345000000000001 10.345000000000001 10.000000000000000
    &gt;          -3.0000000000000000 -4.9399999999999999E-002 0.10000000000000001
    &gt;          12345.678910000001 0.0000000000000000 12121.000000000000
    &gt;That's all folks!
</pre>
        </blockquote>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
