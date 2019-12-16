<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c38">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>expand(3f)</b> - [M_strings:NONALPHA] expand C-like escape sequences <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="6">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>expand</b>(line,escape) <b>result</b>(<i>lineout</i>)
<br />
   character(len=*)                      :: line
   character(len=1),intent(in),optional  :: escape
   character(len=:),allocatable          :: lineout
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <p><b>EXPAND</b>() expands sequences used to represent commonly used escape sequences or control characters. By default ...</p>
        <p>Escape sequences</p>
        <blockquote>
          <table cellpadding="3">
            <!-- tsb: Escape sequences
 -->
            <tr valign="top">
              <td class="c39" width="6%" nowrap="nowrap">\\</td>
              <td valign="bottom">backslash</td>
            </tr>
            <tr valign="top">
              <td class="c39" width="6%" nowrap="nowrap">\a</td>
              <td valign="bottom">alert (BEL) -- g is an alias for a</td>
            </tr>
            <tr valign="top">
              <td class="c39" width="6%" nowrap="nowrap">\b</td>
              <td valign="bottom">backspace</td>
            </tr>
            <tr valign="top">
              <td class="c39" width="6%" nowrap="nowrap">\c</td>
              <td valign="bottom">suppress further output</td>
            </tr>
            <tr valign="top">
              <td class="c39" width="6%" nowrap="nowrap">\e</td>
              <td valign="bottom">escape</td>
            </tr>
            <tr valign="top">
              <td class="c39" width="6%" nowrap="nowrap">\f</td>
              <td valign="bottom">form feed</td>
            </tr>
            <tr valign="top">
              <td class="c39" width="6%" nowrap="nowrap">\n</td>
              <td valign="bottom">new line</td>
            </tr>
            <tr valign="top">
              <td class="c39" width="6%" nowrap="nowrap">\r</td>
              <td valign="bottom">carriage return</td>
            </tr>
            <tr valign="top">
              <td class="c39" width="6%" nowrap="nowrap">\t</td>
              <td valign="bottom">horizontal tab</td>
            </tr>
            <tr valign="top">
              <td class="c39" width="6%" nowrap="nowrap">\v</td>
              <td valign="bottom">vertical tab</td>
            </tr>
            <tr valign="top">
              <td class="c39" width="6%" nowrap="nowrap">\oNNN</td>
              <td valign="bottom">byte with octal value NNN (3 digits)</td>
            </tr>
            <tr valign="top">
              <td class="c39" width="6%" nowrap="nowrap">\dNNN</td>
              <td valign="bottom">byte with decimal value NNN (3 digits)</td>
            </tr>
            <tr valign="top">
              <td class="c39" width="6%" nowrap="nowrap">\xHH</td>
              <td valign="bottom">byte with hexadecimal value HH (2 digits) -- h is an alias for x</td>
            </tr>
          </table>
        </blockquote>
        <p>The default escape character is the backslash, but this may be changed using the optional parameter ESCAPE.</p>
      </blockquote><a name="3"></a>
      <h3><a name="3">EXAMPLES</a></h3>
      <blockquote>
        Sample Program:
        <pre>
    program demo_expand
    !  test filter to expand escape sequences in input lines
    use M_strings, only : expand
    character(len=1024) :: line
    integer             :: ios
       READFILE: block
          do
             read(*,'(A)',iostat=ios)line
             if(ios /= 0) exit READFILE
             write(*,'(a)')trim(expand(line))
          enddo
       endblock READFILE
    end program demo_expand
<br />
</pre>Sample input:
        <pre>
     \e[2J
     \tABC\tabc
     \tA\a
     \nONE\nTWO\nTHREE
<br />
</pre>
      </blockquote><a name="4"></a>
    </div>
  </div>
</body>
