<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c1">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>adjustc(3f)</b> - [M_strings:WHITESPACE] center text <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>

      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
pure function <b>adjustc</b>(string[,length])
<br />
   character(len=*),intent(in)  :: string
   integer,intent(in),optional  :: length
   character(len=:),allocatable :: adjustc
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        Centers input text in a string of the length specified. Returns a string of length LENGTH if LENGTH is present. Otherwise returns a string of the
        length of the input string.
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">string</td>
            <td valign="bottom">input string to trim and center</td>
          </tr>
          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">length</td>
            <td valign="bottom">line length to center text in, optional.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c2" colspan="1">adjustc</td>
            <td>centered output string</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLES</a></h3>
      <blockquote>
        Sample Program:
        <pre>
   program demo_adjustc
   use M_strings, only : adjustc
   !  using length of the input string
      write(*,'(a)')       '================================'
      write(*,'(a)')adjustc('centered string                 ')
      write(*,'(a)')adjustc('                 centered string')
      write(*,'(a)')adjustc('  centered string               ')
   !  using explicit output string length
      write(*,'(a)')repeat('=',50)
      write(*,'(a)')adjustc('this is a centered string',50)
      write(*,'(a)')repeat('=',50)
   end program demo_adjustc
<br />
</pre>Expected output
        <pre>
   ================================
           centered string
           centered string
           centered string
   ==================================================
               this is a centered string
   ==================================================
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
