<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c104">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>msg(3f)</b> - [M_strings] converts any standard scalar type to a string <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>msg</b>(g1,g2g3,g4,g5,g6,g7,g8,g9,nospace)
<br />
    class(*),intent(in),optional  :: g1,g2,g3,g4,g5,g6,g7,g8,g9
    logical,intent(in),optional   :: nospace
    character,len=(:),allocatable :: msg
<br />
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <b>msg</b>(3f) builds a space-separated string from up to nine scalar values.
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c105" width="6%" nowrap="nowrap">g[1-9]</td>
            <td valign="bottom">optional value to print the value of after the message. May be of type INTEGER, LOGICAL, REAL, DOUBLEPRECISION, COMPLEX, or
            CHARACTER.</td>
          </tr>
          <tr valign="top">
            <td class="c105" colspan="1">nospace</td>
            <td>if nospace=.true., then no spaces are added between values</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c105" width="6%" nowrap="nowrap">msg</td>
            <td valign="bottom">description to print</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLES</a></h3>
      <blockquote>
        Sample program:
        <pre>
   program demo_msg
   use M_strings, only : msg
   implicit none
   character(len=:),allocatable :: pr
   character(len=:),allocatable :: frmt
   integer                      :: biggest
<br />
   pr=msg('HUGE(3f) integers',huge(0),'and real',huge(0.0),'and double',huge(0.0d0))
   write(*,'(a)')pr
   pr=msg('real            :',huge(0.0),0.0,12345.6789,tiny(0.0) )
   write(*,'(a)')pr
   pr=msg('doubleprecision :',huge(0.0d0),0.0d0,12345.6789d0,tiny(0.0d0) )
   write(*,'(a)')pr
   pr=msg('complex         :',cmplx(huge(0.0),tiny(0.0)) )
   write(*,'(a)')pr
<br />
   ! create a format on the fly
   biggest=huge(0)
   frmt=msg('(*(i',int(log10(real(biggest))),':,1x))',nospace=.true.)
   write(*,*)'format=',frmt
<br />
   ! although it will often work, using msg(3f) in an I/O statement is not recommended
   write(*,*)msg('program will now stop')
<br />
   end program demo_msg
<br />
</pre>
      </blockquote>Output
      <pre>
   HUGE(3f) integers 2147483647 and real 3.40282347E+38 and double 1.7976931348623157E+308
   real            : 3.40282347E+38 0.00000000 12345.6787 1.17549435E-38
   doubleprecision : 1.7976931348623157E+308 0.0000000000000000 12345.678900000001 2.2250738585072014E-308
   complex         : (3.40282347E+38,1.17549435E-38)
    format=(*(i9:,1x))
    program will now stop
<br />
</pre><a name="6"></a>
    </div>
  </div>
</body>
