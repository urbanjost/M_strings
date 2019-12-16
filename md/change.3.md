<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c9">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>change(3f)</b> - [M_strings:EDITING] change old string to new string with a directive like a line editor <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="7">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
subroutine <b>change</b>(target_string,cmd,ierr)
<br />
    character(len=*),intent(inout) :: target_string
    character(len=*),intent(in)    :: cmd
    integer                        :: ierr
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        change an old substring into a new substring in a character variable like a line editor. Primarily used to create interactive utilities such as
        input history editors for interactive line-mode programs. The output string is assumed long enough to accommodate the change. a directive resembles
        a line editor directive of the form
        <pre>
      C/old_string/new_string/
<br />
</pre>where / may be any character which is not included in old_string or new_string.
        <p>a null old_string implies "beginning of string".</p>
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c10" colspan="1">target_string</td>
            <td>line to be changed</td>
          </tr>
          <tr valign="top">
            <td class="c10" width="6%" nowrap="nowrap">cmd</td>
            <td valign="bottom">contains instructions to change the string</td>
          </tr>
          <tr valign="top">
            <td class="c10" width="6%" nowrap="nowrap">ierr</td>
            <td valign="bottom">
              error code.
              <table width="100%" cellpadding="3">
                <tr valign="top">
                  <td width="3%">o</td>
                  <td>=<b>-1</b> bad directive</td>
                </tr>
                <tr valign="top">
                  <td width="3%">o</td>
                  <td>=0 no changes made</td>
                </tr>
                <tr valign="top">
                  <td width="3%">o</td>
                  <td>&gt;0 count of changes made</td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">EXAMPLES</a></h3>
      <blockquote>
        Sample program:
        <pre>
   program demo_change
<br />
    use M_strings, only : change
    implicit none
    character(len=132) :: line='This is a test string to change'
    integer            :: ierr
       write(*,*)trim(line)
<br />
       ! change miniscule a to uppercase A
       call change(line,'c/a/A/',ierr)
       write(*,*)trim(line)
<br />
       ! put string at beginning of line
       call change(line,'c//prefix: /',ierr)
       write(*,*)trim(line)
<br />
       ! remove blanks
       call change(line,'c/ //',ierr)
       write(*,*)trim(line)
   end program demo_change
</pre>
          <p>Expected output</p>
          <pre>
    This is a test string to change
    This is A test string to chAnge
    prefix: This is A test string to chAnge
    prefix:ThisisAteststringtochAnge
</pre>
        </blockquote>
      </blockquote><a name="5"></a>
    </div>
  </div>
</body>
