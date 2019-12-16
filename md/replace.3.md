<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c123">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>replace(3f)</b> - [M_strings:EDITING] function globally replaces one substring for another in string <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>replace</b>(targetline[,old,new|cmd],range,ierr) result (<i>newline</i>)
<br />
    character(len=*)                       :: targetline
    character(len=*),intent(in),optional   :: old
    character(len=*),intent(in),optional   :: new
    character(len=*),intent(in),optional   :: cmd
    integer,intent(in),optional            :: range(2)
    integer,intent(out),optional           :: ierr
    logical,intent(in),optional            :: clip
    character(len=:),allocatable           :: newline
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        Globally replace one substring for another in string. Either CMD or OLD and NEW must be specified.
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c124" colspan="1">targetline</td>
            <td>input line to be changed</td>
          </tr>
          <tr valign="top">
            <td class="c124" width="6%" nowrap="nowrap">old</td>
            <td valign="bottom">old substring to replace</td>
          </tr>
          <tr valign="top">
            <td class="c124" width="6%" nowrap="nowrap">new</td>
            <td valign="bottom">new substring</td>
          </tr>
          <tr valign="top">
            <td class="c124" width="6%" nowrap="nowrap">cmd</td>
            <td valign="bottom">alternate way to specify old and new string, in the form c/old/new/; where "/" can be any character not in "old" or
            "new"</td>
          </tr>
          <tr valign="top">
            <td class="c124" width="6%" nowrap="nowrap">range</td>
            <td valign="bottom">if present, only change <b>range</b>(1) to <b>range</b>(2) of occurrences of old string</td>
          </tr>
          <tr valign="top">
            <td class="c124" width="6%" nowrap="nowrap">ierr</td>
            <td valign="bottom">error code. iF ier = <b>-1</b> bad directive, &gt;= 0 then count of changes made</td>
          </tr>
          <tr valign="top">
            <td class="c124" width="6%" nowrap="nowrap">clip</td>
            <td valign="bottom">whether to return trailing spaces or not. Defaults to .false.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c125" colspan="1">newline</td>
            <td>allocatable string returned</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLES</a></h3>
      <blockquote>
        Sample Program:
        <pre>
   program demo_replace
   use M_strings, only : replace
   implicit none
   character(len=:),allocatable :: targetline
<br />
   targetline='this is the input string'
<br />
   call testit('th','TH','THis is THe input string')
<br />
   ! a null old substring means "at beginning of line"
   call testit('','BEFORE:', 'BEFORE:THis is THe input string')
<br />
   ! a null new string deletes occurrences of the old substring
   call testit('i','', 'BEFORE:THs s THe nput strng')
<br />
   write(*,*)'Examples of the use of RANGE='
<br />
   targetline=replace('a b ab baaa aaaa','a','A')
   write(*,*)'replace a with A ['//targetline//']'
<br />
   targetline=replace('a b ab baaa aaaa','a','A',range=[3,5])
   write(*,*)'replace a with A instances 3 to 5 ['//targetline//']'
<br />
   targetline=replace('a b ab baaa aaaa','a','',range=[3,5])
   write(*,*)'replace a with null instances 3 to 5 ['//targetline//']'
<br />
   targetline=replace('a b ab baaa aaaa aa aa a a a aa aaaaaa','aa','CCCC',range=[3,5])
   write(*,*)'replace aa with CCCC instances 3 to 5 ['//targetline//']'
<br />
   contains
   subroutine testit(old,new,expected)
   character(len=*),intent(in) :: old,new,expected
   write(*,*)repeat('=',79)
   write(*,*)'STARTED ['//targetline//']'
   write(*,*)'OLD['//old//']', ' NEW['//new//']'
   targetline=replace(targetline,old,new)
   write(*,*)'GOT     ['//targetline//']'
   write(*,*)'EXPECTED['//expected//']'
   write(*,*)'TEST    [',targetline.eq.expected,']'
   end subroutine testit
<br />
   end program demo_replace
<br />
</pre>Expected output
        <pre>
    ===============================================================================
    STARTED [this is the input string]
    OLD[th] NEW[TH]
    GOT     [THis is THe input string]
    EXPECTED[THis is THe input string]
    TEST    [ T ]
    ===============================================================================
    STARTED [THis is THe input string]
    OLD[] NEW[BEFORE:]
    GOT     [BEFORE:THis is THe input string]
    EXPECTED[BEFORE:THis is THe input string]
    TEST    [ T ]
    ===============================================================================
    STARTED [BEFORE:THis is THe input string]
    OLD[i] NEW[]
    GOT     [BEFORE:THs s THe nput strng]
    EXPECTED[BEFORE:THs s THe nput strng]
    TEST    [ T ]
    Examples of the use of RANGE=
    replace a with A [A b Ab bAAA AAAA]
    replace a with A instances 3 to 5 [a b ab bAAA aaaa]
    replace a with null instances 3 to 5 [a b ab b aaaa]
    replace aa with CCCC instances 3 to 5 [a b ab baaa aaCCCC CCCC CCCC a a a aa aaaaaa]
<br />
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
