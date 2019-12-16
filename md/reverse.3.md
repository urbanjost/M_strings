<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c127">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>reverse(3f)</b> - [M_strings:EDITING] Return a string reversed <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="6">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
elemental pure function <b>reverse</b>(<i>str</i>) result (<i>string</i>)
<br />
    character(*), intent(in) :: str
    character(len(str))      :: string
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <b>reverse</b>(<i>string</i>) returns a copy of the input <i>string</i> with all characters reversed from right to left.
      </blockquote><a name="3"></a>
      <h3><a name="3">EXAMPLE</a></h3>
      <blockquote>
        Sample program:
        <pre>
      program demo_reverse
      use M_strings, only: reverse
      implicit none
      character(len=:),allocatable  :: s
         write(*,*)'REVERSE STRINGS:',reverse('Madam, I''m Adam')
         s='abcdefghijklmnopqrstuvwxyz'
         write(*,*) 'original input string is ....',s
         write(*,*) 'reversed output string is ...',reverse(s)
      end program demo_reverse
<br />
</pre>Expected output
        <pre>
     original input string is ....abcdefghijklmnopqrstuvwxyz
     reversed output string is ...zyxwvutsrqponmlkjihgfedcba
</pre>
      </blockquote><a name="4"></a>
    </div>
  </div>
</body>
