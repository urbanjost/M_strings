<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c77">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>len_white(3f)</b> - [M_strings:LENGTH] get length of string trimmed of whitespace. <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="9">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
integer function <b>len_white</b>(<i>string</i>)
<br />
    character(len=*) :: string
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <b>len_white</b>(3f) returns the position of the last character in <i>string</i> that is not a whitespace character. The Fortran90 intrinsic
        <b>LEN_TRIM</b>() should be used when trailing whitespace can be assumed to always be spaces.
        <p>This procedure was heavily used in the past because ANSI FORTRAN 77 character objects are fixed length and blank padded and the <b>LEN_TRIM</b>()
        intrinsic did not exist. It should now be used only when whitespace characters other than blanks are likely.</p>
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c78" width="6%" nowrap="nowrap">string</td>
            <td valign="bottom">input <i>string</i> whose trimmed length is being calculated ignoring all trailing whitespace characters.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c79" colspan="1">len_white</td>
            <td>the number of characters in the trimmed <i>string</i></td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample Program:
        <pre>
   program demo_len_white
<br />
    use M_strings, only : len_white
    character(len=80) ::  s
    intrinsic len
<br />
    s=' ABCDEFG abcdefg '
    ilen = len(s)
    lastnb = len_white(s)
<br />
    write(*,*) 'total length of variable is ',ilen
    write(*,*) 'trimmed length of variable is ',lastnb
    write(*,*) 'trimmed string=[',s(:lastnb),']'
<br />
   end program demo_len_white
</pre>
      </blockquote><a name="6"></a>
      <h3><a name="6">NOTES</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td width="3%">o</td>
            <td>len_white</td>
          </tr>
        </table><!-- .nf -->
        <pre>
     is a resource-intensive routine. Once the end of
     the string is found, it is probably best to keep track of it in
     order to avoid repeated calls to len_white. Because they
     might be more efficient, consider looking for vendor-supplied or
     system-optimized equivalents. For example:
<br />
        o lnblnk - Solaris f77
        o len_trim - FORTRAN 90
<br />
</pre>
        <table cellpadding="3">
          <tr valign="top">
            <td width="3%">o</td>
            <td>
              <p>Some compilers seem to have trouble passing a <i>string</i> of variable length properly. To be safe, use something like this:</p>
            </td>
          </tr>
        </table><!-- .nf -->
        <pre>
      subroutine message(s)
       character(len=*) :: s ! s is of variable length
          ilen=len(s)        ! get total length of variable
          ! explicitly specify a substring instead of just variable name
          lastnb = len_white(s(:ilen))
          write(*,*)'error:[',s(:lastnb),']'
      end subroutine messages
<br />
</pre>
      </blockquote><a name="7"></a>
    </div>
  </div>
</body>
