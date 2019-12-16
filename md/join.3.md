<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c73">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>join(3f)</b> - [M_strings:EDITING] append CHARACTER variable array into a single CHARACTER variable with specified separator <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
pure function <b>join</b>(str,sep,trm,left,right) result (<i>string</i>)
<br />
    character(len=*),intent(in)          :: str(:)
    character(len=*),intent(in),optional :: sep
    logical,intent(in),optional          :: trm
    character(len=*),intent(in),optional :: right
    character(len=*),intent(in),optional :: left
    character(len=:),allocatable         :: string
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <b>JOIN</b>(3f) appends the elements of a CHARACTER array into a single CHARACTER variable, with elements 1 to N joined from left to right. By
        default each element is trimmed of trailing spaces and the default separator is a null <i>string</i>.
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td width="6%" nowrap="nowrap"><b>STR</b>(:)</td>
            <td valign="bottom">array of CHARACTER variables to be joined</td>
          </tr>
          <tr valign="top">
            <td class="c74" width="6%" nowrap="nowrap">SEP</td>
            <td valign="bottom">separator <i>string</i> to place between each variable. defaults to a null <i>string</i>.</td>
          </tr>
          <tr valign="top">
            <td class="c74" width="6%" nowrap="nowrap">LEFT</td>
            <td valign="bottom"><i>string</i> to place at left of each element</td>
          </tr>
          <tr valign="top">
            <td class="c74" width="6%" nowrap="nowrap">RIGHT</td>
            <td valign="bottom"><i>string</i> to place at right of each element</td>
          </tr>
          <tr valign="top">
            <td class="c74" width="6%" nowrap="nowrap">TRM</td>
            <td valign="bottom">option to trim each element of STR of trailing spaces. Defaults to .TRUE.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RESULT</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c74" width="6%" nowrap="nowrap">STRING</td>
            <td valign="bottom">CHARACTER variable composed of all of the elements of <b>STR</b>() appended together with the optional separator SEP placed
            between the elements.</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample program:
        <pre>
      program demo_join
      use M_strings, only: join
      implicit none
      character(len=:),allocatable  :: s(:)
      character(len=:),allocatable  :: out
      integer                       :: i
         s=[character(len=10) :: 'United',' we',' stand,',' divided',' we fall.']
         out=join(s)
         write(*,'(a)') out
         write(*,'(a)') join(s,trm=.false.)
         write(*,'(a)') (join(s,trm=.false.,sep='|'),i=1,3)
         write(*,'(a)') join(s,sep='&lt;&gt;')
         write(*,'(a)') join(s,sep=';',left='[',right=']')
         write(*,'(a)') join(s,left='[',right=']')
         write(*,'(a)') join(s,left='&gt;&gt;')
      end program demo_join
<br />
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
