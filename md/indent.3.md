<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c50">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>indent(3f)</b> - [M_strings:WHITESPACE] count number of leading spaces in a string <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="6">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>indent</b>(<i>line</i>)
<br />
    integer                        :: indent
    character(len=*),intent(in)    :: line
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        Count number of leading spaces in a CHARACTER variable.
      </blockquote><a name="3"></a>
      <h3><a name="3">EXAMPLES</a></h3>
      <blockquote>
        Sample Program:
        <pre>
    program demo_indent
    !  test filter to count leading spaces in a character variable
    !  might want to call notabs(3f) to expand tab characters
    use M_strings, only : indent
    implicit none
    character(len=1024) :: in
    integer             :: ios
       READFILE: do
          read(*,'(A)',iostat=ios)in
          if(ios /= 0) exit READFILE
          write(*,'(i3,"",a)')indent(in),trim(in)
       enddo READFILE
    end program demo_indent
<br />
</pre>
      </blockquote><a name="4"></a>
    </div>
  </div>
</body>
