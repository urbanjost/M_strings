<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c119">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>quote(3f)</b> - [M_strings:QUOTES] add quotes to string as if written with list-directed input <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>quote</b>(str,mode,clip) result (<i>quoted_str</i>)
<br />
   character(len=*),intent(in)          :: str
   character(len=*),optional,intent(in) :: mode
   logical,optional,intent(in)          :: clip
   character(len=:),allocatable         :: quoted_str
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        Add quotes to a CHARACTER variable as if it was written using list-directed input. This is particularly useful for processing strings to add to CSV
        files.
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c120" width="6%" nowrap="nowrap">str</td>
            <td valign="bottom">input string to add quotes to, using the rules of list-directed input (single quotes are replaced by two adjacent
            quotes)</td>
          </tr>
          <tr valign="top">
            <td class="c120" width="6%" nowrap="nowrap">mode</td>
            <td valign="bottom">alternate quoting methods are supported:</td>
          </tr>
          <tr>
            <td colspan="1">
              <pre>
                  DOUBLE   default. replace quote with double quotes
                  ESCAPE   replace quotes with backslash-quote instead of double quotes
</pre>
            </td>
          </tr>
          <tr valign="top">
            <td class="c120" width="6%" nowrap="nowrap">clip</td>
            <td valign="bottom">default is to trim leading and trailing spaces from the string. If CLIP is .FALSE. spaces are not trimmed</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RESULT</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c121" colspan="1">quoted_str</td>
            <td>The output string, which is based on adding quotes to STR.</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample program:
        <pre>
   program demo_quote
   use M_strings, only : quote
   implicit none
   character(len=:),allocatable :: str
   character(len=1024)          :: msg
   integer                      :: ios
   character(len=80)            :: inline
      do
         write(*,'(a)',advance='no')'Enter test string:'
         read(*,'(a)',iostat=ios,iomsg=msg)inline
         if(ios.ne.0)then
            write(*,*)trim(inline)
            exit
         endif
<br />
         ! the original string
         write(*,'(a)')'ORIGINAL     ['//trim(inline)//']'
<br />
         ! the string processed by quote(3f)
         str=quote(inline)
         write(*,'(a)')'QUOTED     ['//str//']'
<br />
         ! write the string list-directed to compare the results
         write(*,'(a)',iostat=ios,iomsg=msg) 'LIST DIRECTED:'
         write(*,*,iostat=ios,iomsg=msg,delim='none') inline
         write(*,*,iostat=ios,iomsg=msg,delim='quote') inline
         write(*,*,iostat=ios,iomsg=msg,delim='apostrophe') inline
      enddo
   end program demo_quote
<br />
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
