<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c42">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>fmt(3f)</b> - [M_strings:TOKENS] Tokenize a string, consuming it one token per call <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>fmt</b>(source_string,length)
<br />
   character(len=*),intent(in)       :: source_string
   integer,intent(in)                :: length
   character(allocatable(len=length)    :: fmt(:)
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <b>fmt</b>(3f) breaks a long line into a simple paragraph of specified line length.
        <p>Given a long string break it on spaces into an array such that no variable is longer than the specified length. Individual words longer than
        LENGTH will be placed in variables by themselves.</p>
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c43" colspan="1">SOURCE_STRING</td>
            <td>input string to break into an array of shorter strings on blank delimiters</td>
          </tr>
          <tr valign="top">
            <td class="c43" width="6%" nowrap="nowrap">LENGTH</td>
            <td valign="bottom">length of lines to break the string into.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c43" width="6%" nowrap="nowrap">FMT</td>
            <td valign="bottom">character array filled with data from source_string broken at spaces into variables of length LENGTH.</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        sample program
        <pre>
   program demo_fmt
   use M_strings, only : fmt
   character(len=80),allocatable :: paragraph(:)
   character(len=*),parameter    :: string= '&amp;
    &amp;one two three four five &amp;
    &amp;six seven eight &amp;
    &amp;nine ten eleven twelve &amp;
    &amp;thirteen fourteen fifteen sixteen &amp;
    &amp;seventeen'
<br />
   paragraph=fmt(string,40)
   write(*,'(a)')paragraph
<br />
   write(*,'(a)')fmt(string,0)
   write(*,'(3x,a)')fmt(string,77)
<br />
   end program demo_fmt
<br />
</pre>
        <blockquote>
          Results:
          <pre>
   one two three four five six seven eight
   nine ten eleven twelve thirteen fourteen
   fifteen sixteen seventeen
   one
   two
   three
   four
   five
   six
   seven
   eight
   nine
   ten
   eleven
   twelve
   thirteen
   fourteen
   fifteen
   sixteen
   seventeen
      one two three four five six seven eight nine ten eleven twelve thirteen
      fourteen fifteen sixteen seventeen
</pre>
        </blockquote>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
