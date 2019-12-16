<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c97">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>merge_str(3f)</b> - [M_strings:LENGTH] pads strings to same length and then calls <b>MERGE</b>(3f) <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="6">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>merge_str</b>(str1,str2,expr) <b>result</b>(<i>strout</i>)
<br />
    character(len=*),intent(in)     :: str1
    character(len=*),intent(in)     :: str2
    logical,intent(in)              :: expr
    character(len=:),allocatable    :: strout
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <b>merge_str</b>(3f) pads the shorter of str1 and str2 to the longest length of str1 and str2 and then calls
        <b>MERGE</b>(padded_str1,padded_str2,expr). It trims trailing spaces off the result and returns the trimmed string. This makes it easier to call
        <b>MERGE</b>(3f) with strings, as <b>MERGE</b>(3f) requires the strings to be the same length.
      </blockquote><a name="3"></a>
      <h3><a name="3">EXAMPLES</a></h3>
      <blockquote>
        Sample Program:
        <pre>
    program demo_merge_str
    use M_strings, only : merge_str
    implicit none
    character(len=:), allocatable :: answer
       answer=merge_str('first string', 'second string is longer',10.eq.10)
       write(*,'("[",a,"]")') answer
       answer=merge_str('first string', 'second string is longer',10.ne.10)
       write(*,'("[",a,"]")') answer
    end program demo_merge_str
<br />
</pre>
        <blockquote>
          Expected output
          <pre>
    [first string]
    [second string is longer]
</pre>
        </blockquote>
      </blockquote><a name="4"></a>
    </div>
  </div>
</body>
