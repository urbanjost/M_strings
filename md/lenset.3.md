<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c81">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>lenset(3f)</b> - [M_strings:LENGTH] return string trimmed or padded to specified length <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>lenset</b>(str,length) <b>result</b>(<i>strout</i>)
<br />
    character(len=*)                     :: str
    character(len=length)                :: strout
    integer,intent(in)                   :: length
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <b>lenset</b>(3f) truncates a string or pads it with spaces to the specified length.
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c82" width="6%" nowrap="nowrap">str</td>
            <td valign="bottom">input string</td>
          </tr>
          <tr valign="top">
            <td class="c82" width="6%" nowrap="nowrap">length</td>
            <td valign="bottom">output string length</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RESULTS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c83" width="6%" nowrap="nowrap">strout</td>
            <td valign="bottom">output string</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample Program:
        <pre>
    program demo_lenset
     use M_strings, only : lenset
     implicit none
     character(len=10)            :: string='abcdefghij'
     character(len=:),allocatable :: answer
        answer=lenset(string,5)
        write(*,'("[",a,"]")') answer
        answer=lenset(string,20)
        write(*,'("[",a,"]")') answer
    end program demo_lenset
<br />
</pre>Expected output:
        <pre>
    [abcde]
    [abcdefghij          ]
<br />
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
