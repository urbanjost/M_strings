<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c164">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>substitute(3f)</b> - [M_strings:EDITING] subroutine globally substitutes one substring for another in string <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="7">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
subroutine <b>substitute</b>(targetline,old,new,ierr,start,end)
<br />
    character(len=*)              :: targetline
    character(len=*),intent(in)   :: old
    character(len=*),intent(in)   :: new
    integer,intent(out),optional  :: ierr
    integer,intent(in),optional   :: start
    integer,intent(in),optional   :: end
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        Globally substitute one substring for another in string.
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c165" colspan="1">TARGETLINE</td>
            <td>input line to be changed. Must be long enough to hold altered output.</td>
          </tr>
          <tr valign="top">
            <td class="c165" width="6%" nowrap="nowrap">OLD</td>
            <td valign="bottom">substring to find and replace</td>
          </tr>
          <tr valign="top">
            <td class="c165" width="6%" nowrap="nowrap">NEW</td>
            <td valign="bottom">replacement for OLD substring</td>
          </tr>
          <tr valign="top">
            <td class="c165" width="6%" nowrap="nowrap">IERR</td>
            <td valign="bottom">error code. If IER = <b>-1</b> bad directive, &gt;= 0 then count of changes made.</td>
          </tr>
          <tr valign="top">
            <td class="c165" width="6%" nowrap="nowrap">START</td>
            <td valign="bottom">sets the left margin to be scanned for OLD in TARGETLINE.</td>
          </tr>
          <tr valign="top">
            <td class="c165" width="6%" nowrap="nowrap">END</td>
            <td valign="bottom">sets the right margin to be scanned for OLD in TARGETLINE.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">EXAMPLES</a></h3>
      <blockquote>
        Sample Program:
        <pre>
   program demo_substitute
   use M_strings, only : substitute
   implicit none
   ! must be long enough to hold changed line
   character(len=80) :: targetline
<br />
   targetline='this is the input string'
   write(*,*)'ORIGINAL    : '//trim(targetline)
<br />
   ! changes the input to 'THis is THe input string'
   call substitute(targetline,'th','TH')
   write(*,*)'th =&gt; TH    : '//trim(targetline)
<br />
   ! a null old substring means "at beginning of line"
   ! changes the input to 'BEFORE:this is the input string'
   call substitute(targetline,'','BEFORE:')
   write(*,*)'"" =&gt; BEFORE: '//trim(targetline)
<br />
   ! a null new string deletes occurrences of the old substring
   ! changes the input to 'ths s the nput strng'
   call substitute(targetline,'i','')
   write(*,*)'i =&gt; ""     : '//trim(targetline)
<br />
   end program demo_substitute
<br />
</pre>Expected output
        <pre>
    ORIGINAL    : this is the input string
    th =&gt; TH    : THis is THe input string
    "" =&gt; BEFORE: BEFORE:THis is THe input string
    i =&gt; ""     : BEFORE:THs s THe nput strng
</pre>
      </blockquote><a name="5"></a>
    </div>
  </div>
</body>
