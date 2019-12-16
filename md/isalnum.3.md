<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c53">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>isalnum,isalpha,iscntrl,isdigit,isgraph,islower,</b> <b>isprint,ispunct,isspace,isupper,isascii,isblank,isxdigit(3f)</b> - [M_strings:COMPARE]
        test membership in subsets of ASCII set <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="6">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
Where "FUNCNAME" is one of the function names in the <i>group</i>, the functions are defined by
<br />
    elemental function FUNCNAME(onechar)
    character,intent(in) :: onechar
    logical              :: FUNC_NAME
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <p>These elemental functions test if a character belongs to various subsets of the ASCII character set.</p>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c54" colspan="1">isalnum</td>
            <td>returns .true. if character is a letter (a-z,A-Z) or digit (0-9)</td>
          </tr>
          <tr valign="top">
            <td class="c54" colspan="1">isalpha</td>
            <td>returns .true. if character is a letter and .false. otherwise</td>
          </tr>
          <tr valign="top">
            <td class="c54" colspan="1">isascii</td>
            <td>returns .true. if character is in the range <b>char</b>(0) to <b>char</b>(127)</td>
          </tr>
          <tr valign="top">
            <td class="c54" colspan="1">isblank</td>
            <td>returns .true. if character is a blank (space or horizontal tab).</td>
          </tr>
          <tr valign="top">
            <td class="c54" colspan="1">iscntrl</td>
            <td>returns .true. if character is a delete character or ordinary control character (0x7F or 0x00-0x1F).</td>
          </tr>
          <tr valign="top">
            <td class="c54" colspan="1">isdigit</td>
            <td>returns .true. if character is a digit (0,1,...,9) and .false. otherwise</td>
          </tr>
          <tr valign="top">
            <td class="c54" colspan="1">isgraph</td>
            <td>returns .true. if character is a printable ASCII character excluding space</td>
          </tr>
          <tr valign="top">
            <td class="c54" colspan="1">islower</td>
            <td>returns .true. if character is a miniscule letter (a-z)</td>
          </tr>
          <tr valign="top">
            <td class="c54" colspan="1">isprint</td>
            <td>returns .true. if character is a printable ASCII character</td>
          </tr>
          <tr valign="top">
            <td class="c54" colspan="1">ispunct</td>
            <td>returns .true. if character is a printable punctuation character (isgraph(c) &amp;&amp; !isalnum(c)).</td>
          </tr>
          <tr valign="top">
            <td class="c54" colspan="1">isspace</td>
            <td>returns .true. if character is a null, space, tab, carriage return, new line, vertical tab, or formfeed</td>
          </tr>
          <tr valign="top">
            <td class="c54" colspan="1">isupper</td>
            <td>returns .true. if character is an uppercase letter (A-Z)</td>
          </tr>
          <tr valign="top">
            <td class="c54" colspan="1">isxdigit</td>
            <td>returns .true. if character is a hexadecimal digit (0-9, a-f, or A-F).</td>
          </tr>
        </table>
      </blockquote><a name="3"></a>
      <h3><a name="3">EXAMPLES</a></h3>
      <blockquote>
        Sample Program:
        <pre>
   program demo_isdigit
<br />
   use M_strings, only : isdigit, isspace, switch
   implicit none
   character(len=10),allocatable :: string(:)
   integer                       :: i
      string=[&amp;
      &amp; '1 2 3 4 5 ' ,&amp;
      &amp; 'letters   ' ,&amp;
      &amp; '1234567890' ,&amp;
      &amp; 'both 8787 ' ]
      ! if string is nothing but digits and whitespace return .true.
      do i=1,size(string)
         write(*,'(a)',advance='no')'For string['//string(i)//']'
         write(*,*) &amp;
         all(isdigit(switch(string(i))).or.isspace(switch(string(i))))
      enddo
<br />
    end program demo_isdigit
<br />
</pre>Expected output:
        <pre>
   For string[1 2 3 4 5 ] T
   For string[letters   ] F
   For string[1234567890] T
   For string[both 8787 ] F
<br />
</pre>
      </blockquote><a name="4"></a>
    </div>
  </div>
</body>
