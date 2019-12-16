<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c20">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>compact(3f)</b> - [M_strings:WHITESPACE] converts contiguous whitespace to a single character (or nothing) <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>compact</b>(STR,CHAR) result (<i>OUTSTR</i>)
<br />
    character(len=*),intent(in)          :: STR
    character(len=*),intent(in),optional :: CHAR
    character(len=len(str))              :: OUTSTR
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <b>COMPACT</b>(3f) converts multiple spaces, tabs and control characters (called "whitespace") to a single character or nothing. Leading whitespace
        is removed.
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c21" width="6%" nowrap="nowrap">STR</td>
            <td valign="bottom">input string to reduce or remove whitespace from</td>
          </tr>
          <tr valign="top">
            <td class="c21" width="6%" nowrap="nowrap">CHAR</td>
            <td valign="bottom">By default the character that replaces adjacent whitespace is a space. If the optional CHAR parameter is supplied it will be
            used to replace the whitespace. If a null character is supplied for CHAR whitespace is removed.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c22" width="6%" nowrap="nowrap">OUTSTR</td>
            <td valign="bottom">string of same length as input string but with all contiguous whitespace reduced to a single space and leading whitespace
            removed</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLES</a></h3>
      <blockquote>
        Sample Program:
        <pre>
   program demo_compact
    use M_strings, only : compact
    implicit none
    ! produces 'This is a test               '
    write(*,*)compact('  This     is      a     test  ')
    ! produces 'Thisisatest                  '
    write(*,*)compact('  This     is      a     test  ',char='')
    ! produces 'This:is:a:test               '
    write(*,*)compact('  This     is      a     test  ',char=':')
    ! note CHAR is used to replace the whitespace, but if CHAR is
    ! in the original string it is just copied
    write(*,*)compact('A  AA    A   AAAAA',char='A')
    ! produces (original A characters are left as-is) 'AAAAAAAAAAAA'
    ! not 'A'
   end program demo_compact
<br />
   Expected output
<br />
    &gt;This is a test
    &gt;Thisisatest
    &gt;This:is:a:test
    &gt;AAAAAAAAAAAA
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
