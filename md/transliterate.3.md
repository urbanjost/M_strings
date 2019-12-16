<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c171">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>transliterate(3f)</b> - [M_strings:EDITING] replace characters from old set with new set <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
pure function <b>transliterate</b>(instr,old_set,new_set) <b>result</b>(<i>outstr</i>)
<br />
    character(len=*),intent(in)  :: instr
    character(len=*),intent(in)  :: old_set
    character(len=*),intent(in)  :: new_set
    character(len=len(instr))    :: outstr
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        Translate, squeeze, and/or delete characters from the input string.
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c172" width="6%" nowrap="nowrap">instr</td>
            <td valign="bottom">input string to change</td>
          </tr>
          <tr valign="top">
            <td class="c172" colspan="1">old_set</td>
            <td>list of letters to change in INSTR if found</td>
          </tr>
          <tr>
            <td colspan="1">
              <pre>
            Each character in the input string that matches a character in
            the old set is replaced.
</pre>
            </td>
          </tr>
          <tr valign="top">
            <td class="c172" colspan="1">new_set</td>
            <td>list of letters to replace letters in OLD_SET with.</td>
          </tr>
        </table><!-- .nf -->
        <pre>
            If the new_set is the empty set the matched characters are deleted.
<br />
            If the new_set is shorter than the old set the last character in the
            new set is used to replace the remaining characters in the new set.
</pre>
      </blockquote><a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c173" width="6%" nowrap="nowrap">outstr</td>
            <td valign="bottom">instr with substitutions applied</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLES</a></h3>
      <blockquote>
        Sample Program:
        <pre>
   program demo_transliterate
<br />
    use M_strings, only : transliterate
    implicit none
    character(len=80)   :: STRING
<br />
    STRING='aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ'
    write(*,'(a)') STRING
<br />
    ! convert a string to uppercase:
    write(*,*) TRANSLITERATE(STRING,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')
<br />
    ! change all miniscule letters to a colon (":"):
    write(*,*) TRANSLITERATE(STRING,'abcdefghijklmnopqrstuvwxyz',':')
<br />
    ! delete all miniscule letters
    write(*,*) TRANSLITERATE(STRING,'abcdefghijklmnopqrstuvwxyz','')
<br />
</pre>
        <blockquote>
          end program demo_transliterate
          <p>Expected output</p>
          <pre>
    &gt; aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ
    &gt; AABBCCDDEEFFGGHHIIJJKKLLMMNNOOPPQQRRSSTTUUVVWWXXYYZZ
    &gt; :A:B:C:D:E:F:G:H:I:J:K:L:M:N:O:P:Q:R:S:T:U:V:W:X:Y:Z
    &gt; ABCDEFGHIJKLMNOPQRSTUVWXYZ
<br />
</pre>
        </blockquote>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
