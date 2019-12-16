<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c115">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>notabs(3f)</b> - [M_strings:NONALPHA] expand tab characters <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="7">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
subroutine <b>notabs</b>(INSTR,OUTSTR,ILEN)
<br />
    character(len=*),intent=(in)  :: INSTR
    character(len=*),intent=(out) :: OUTSTR
    integer,intent=(out)          :: ILEN
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <b>NOTABS</b>() converts tabs in INSTR to spaces in OUTSTR while maintaining columns. It assumes a tab is set every 8 characters. Trailing spaces
        are removed.
        <p>In addition, trailing carriage returns and line feeds are removed (they are usually a problem created by going to and from MSWindows).</p>
        <p>What are some reasons for removing tab characters from an input line? Some Fortran compilers have problems with tabs, as tabs are not</p>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c116" colspan="1">part of the Fortran character set.</td>
            <td>Some editors and printers will</td>
          </tr>
          <tr valign="top">
            <td class="c116" colspan="1">have problems with tabs.</td>
            <td>It is often useful to expand tabs in input files to simplify further processing such as tokenizing an input line.</td>
          </tr>
        </table>
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c116" width="6%" nowrap="nowrap">instr</td>
            <td valign="bottom">Input line to remove tabs from</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RESULTS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c116" width="6%" nowrap="nowrap">outstr</td>
            <td valign="bottom">Output string with tabs expanded.</td>
          </tr>
          <tr valign="top">
            <td class="c116" width="6%" nowrap="nowrap">ilen</td>
            <td valign="bottom">Significant length of returned string</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLES</a></h3>
      <blockquote>
        Sample program:
        <pre>
   program demo_notabs
<br />
   !  test filter to remove tabs and trailing white space from input
   !  on files up to 1024 characters wide
   use M_strings, only : notabs
   character(len=1024) :: in,out
   integer             :: ios,iout
      READFILE: block
         do
            read(*,'(A)',iostat=ios)in
            if(ios /= 0) exit READFILE
            call notabs(in,out,iout)
            write(*,'(a)')out(:iout)
         enddo
      endblock READFILE
<br />
   end program demo_notabs
</pre>SEE ALSO: GNU/Unix commands <b>expand</b>(1) and <b>unexpand</b>(1)
    </div>
  </div>
</body>
