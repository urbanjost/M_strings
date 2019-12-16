<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c112">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>nospace(3f)</b> - [M_strings:WHITESPACE] remove all whitespace from input string <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="6">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>nospace</b>(<i>str</i>) - remove all whitespace from input string
<br />
    character(len=*),intent(in)          :: str
    character(len=:),allocatable         :: nospace
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <p><b>nospace</b>(3f) removes space, tab, carriage return, new line, vertical tab, formfeed and null characters (called "whitespace"). The output is
        returned trimmed.</p>
      </blockquote><a name="3"></a>
      <h3><a name="3">EXAMPLES</a></h3>
      <blockquote>
        Sample program:
        <pre>
    program demo_nospace
    use M_strings, only: nospace
    implicit none
    character(len=:),allocatable  :: s
       s='  This     is      a     test  '
       write(*,*) 'original input string is ....',s
       write(*,*) 'processed output string is ...',nospace(s)
       if(nospace(s).eq.'Thisisatest')then
          write(*,*)'nospace test passed'
       else
          write(*,*)'nospace test error'
       endif
    end program demo_nospace
<br />
</pre>Expected output
        <pre>
    original input string is ....  This     is      a     test
    processed output string is ...Thisisatest
    nospace test passed
</pre>
      </blockquote><a name="4"></a>
    </div>
  </div>
</body>
