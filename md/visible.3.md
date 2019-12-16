<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c195">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>visible(3f)</b> - [M_strings:NONALPHA] expand a string to control and meta-control representations <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="7">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>visible</b>(<i>input</i>) <b>result</b>(<i>output</i>)
<br />
    character(len=*),intent(in)           :: input
    character(len=:),allocatable          :: output
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <p><b>visible</b>(3f) expands characters to commonly used sequences used to represent the characters as control sequences or meta-control
        sequences.</p>
      </blockquote><a name="3"></a>
      <h3><a name="3">EXAMPLES</a></h3>
      <blockquote>
        Sample Program:
        <pre>
    program demo_visible
    use M_strings, only : visible
    integer :: i
       do i=0,255
          write(*,'(i0,1x,a)')i,visible(char(i))
       enddo
    end program demo_visible
</pre>
      </blockquote><a name="4"></a>
      <h3><a name="4">BUGS</a></h3>
      <blockquote>
        The expansion is not reversible, as <i>input</i> sequences such as "M-" or "^a" will look like expanded sequences.
      </blockquote><a name="5"></a>
    </div>
  </div>
</body>
