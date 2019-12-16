<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c175">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>unquote(3f)</b> - [M_strings:QUOTES] remove quotes from string as if read with list-directed input <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>unquote</b>(quoted_str,esc) result (<i>unquoted_str</i>)
<br />
   character(len=*),intent(in)          :: quoted_str
   character(len=1),optional,intent(in) :: esc
   character(len=:),allocatable         :: unquoted_str
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        Remove quotes from a CHARACTER variable as if it was read using list-directed input. This is particularly useful for processing tokens read from
        input such as CSV files.
        <p>Fortran can now read using list-directed input from an internal file, which should handle quoted strings, but list-directed input does not
        support escape characters, which <b>UNQUOTE</b>(3f) does.</p>
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c176" colspan="1">quoted_str</td>
            <td>input string to remove quotes from, using the rules of list-directed input (two adjacent quotes inside a quoted region are replaced by a
            single quote, a single quote or double quote is selected as the delimiter based on which is encountered first going from left to right,
            ...)</td>
          </tr>
          <tr valign="top">
            <td class="c176" width="6%" nowrap="nowrap">esc</td>
            <td valign="bottom">optional character used to protect the next quote character from being processed as a quote, but simply as a plain
            character.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RESULT</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c177" colspan="1">unquoted_str</td>
            <td>The output string, which is based on removing quotes from quoted_str.</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample program:
        <pre>
   program demo_unquote
      use M_strings, only : unquote
      implicit none
      character(len=128)           :: quoted_str
      character(len=:),allocatable :: unquoted_str
      character(len=1),parameter   :: esc='#146;
      character(len=1024)          :: msg
      integer                      :: ios
      character(len=1024)          :: dummy
      do
         write(*,'(a)',advance='no')'Enter test string:'
         read(*,'(a)',iostat=ios,iomsg=msg)quoted_str
         if(ios.ne.0)then
            write(*,*)trim(msg)
            exit
         endif
<br />
         ! the original string
         write(*,'(a)')'QUOTED       ['//trim(quoted_str)//']'
<br />
         ! the string processed by unquote(3f)
         unquoted_str=unquote(trim(quoted_str),esc)
         write(*,'(a)')'UNQUOTED     ['//unquoted_str//']'
<br />
         ! read the string list-directed to compare the results
         read(quoted_str,*,iostat=ios,iomsg=msg)dummy
         if(ios.ne.0)then
            write(*,*)trim(msg)
         else
            write(*,'(a)')'LIST DIRECTED['//trim(dummy)//']'
         endif
      enddo
   end program demo_unquote
<br />
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
