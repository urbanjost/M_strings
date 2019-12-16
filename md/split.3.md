<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c144">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>split(3f)</b> - [M_strings:TOKENS] parse string into an array using specified delimiters <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="7">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
subroutine <b>split</b>(input_line,array,delimiters,order,nulls)
<br />
    character(len=*),intent(in)              :: input_line
    character(len=:),allocatable,intent(out) :: array(:)
    character(len=*),optional,intent(in)     :: delimiters
    character(len=*),optional,intent(in)     :: order
    character(len=*),optional,intent(in)     :: nulls
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <b>SPLIT</b>(3f) parses a string using specified delimiter characters and store tokens into an allocatable array
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c145" colspan="1">INPUT_LINE</td>
            <td>Input string to tokenize</td>
          </tr>
          <tr valign="top">
            <td class="c145" width="6%" nowrap="nowrap">ARRAY</td>
            <td valign="bottom">Output array of tokens</td>
          </tr>
          <tr valign="top">
            <td class="c145" colspan="1">DELIMITERS</td>
            <td>
              List of delimiter characters. The default delimiters are the "whitespace" characters (space, tab,new line, vertical tab, formfeed, carriage
              return, and null). You may specify an alternate set of delimiter characters.
              <p>Multi-character delimiters are not supported (Each character in the DELIMITERS list is considered to be a delimiter).</p>
              <p>Quoting of delimiter characters is not supported.</p>
            </td>
          </tr>
          <tr valign="top">
            <td class="c145" colspan="1">ORDER SEQUENTIAL|REVERSE|RIGHT</td>
            <td>Order of output array. By default ARRAY contains the tokens having parsed the INPUT_LINE from left to right. If ORDER='RIGHT' or
            ORDER='REVERSE' the parsing goes from right to left.</td>
          </tr>
          <tr valign="top">
            <td class="c145" colspan="1">NULLS IGNORE|RETURN|IGNOREEND</td>
            <td>Treatment of null fields. By default adjacent delimiters in the input string do not create an empty string in the output array. if
            NULLS='return' adjacent delimiters create an empty element in the output ARRAY. If NULLS='ignoreend' then only trailing delimiters at the right
            of the string are ignored.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">EXAMPLES</a></h3>
      <blockquote>
        Sample program:
        <pre>
   program demo_split
   use M_strings, only: split
   character(len=*),parameter     :: &amp;
   &amp; line='  aBcdef   ghijklmnop qrstuvwxyz  1:|:2     333|333 a B cc    '
   character(len=:),allocatable :: array(:) ! output array of tokens
      write(*,*)'INPUT LINE:['//LINE//']'
      write(*,'(80("="))')
      write(*,*)'typical call:'
      CALL split(line,array)
      write(*,'(i0," ==&gt; ",a)')(i,trim(array(i)),i=1,size(array))
      write(*,*)'SIZE:',SIZE(array)
      write(*,'(80("-"))')
      write(*,*)'custom list of delimiters (colon and vertical line):'
      CALL split(line,array,delimiters=':|',order='sequential',nulls='ignore')
      write(*,'(i0," ==&gt; ",a)')(i,trim(array(i)),i=1,size(array))
      write(*,*)'SIZE:',SIZE(array)
      write(*,'(80("-"))')
      write(*,*)&amp;
    &amp;'custom list of delimiters, reverse array order and count null fields:'
      CALL split(line,array,delimiters=':|',order='reverse',nulls='return')
      write(*,'(i0," ==&gt; ",a)')(i,trim(array(i)),i=1,size(array))
      write(*,*)'SIZE:',SIZE(array)
      write(*,'(80("-"))')
      write(*,*)'INPUT LINE:['//LINE//']'
      write(*,*)&amp;
      &amp;'default delimiters and reverse array order and return null fields:'
      CALL split(line,array,delimiters='',order='reverse',nulls='return')
      write(*,'(i0," ==&gt; ",a)')(i,trim(array(i)),i=1,size(array))
      write(*,*)'SIZE:',SIZE(array)
   end program demo_split
<br />
</pre>
        <blockquote>
          Output
          <pre>
   &gt; INPUT LINE:[  aBcdef   ghijklmnop qrstuvwxyz  1:|:2     333|333 a B cc    ]
   &gt; ===========================================================================
   &gt;  typical call:
   &gt; 1 ==&gt; aBcdef
   &gt; 2 ==&gt; ghijklmnop
   &gt; 3 ==&gt; qrstuvwxyz
   &gt; 4 ==&gt; 1:|:2
   &gt; 5 ==&gt; 333|333
   &gt; 6 ==&gt; a
   &gt; 7 ==&gt; B
   &gt; 8 ==&gt; cc
   &gt;  SIZE:           8
   &gt; --------------------------------------------------------------------------
   &gt;  custom list of delimiters (colon and vertical line):
   &gt; 1 ==&gt;   aBcdef   ghijklmnop qrstuvwxyz  1
   &gt; 2 ==&gt; 2     333
   &gt; 3 ==&gt; 333 a B cc
   &gt;  SIZE:           3
   &gt; --------------------------------------------------------------------------
   &gt;  custom list of delimiters, reverse array order and return null fields:
   &gt; 1 ==&gt; 333 a B cc
   &gt; 2 ==&gt; 2     333
   &gt; 3 ==&gt;
   &gt; 4 ==&gt;
   &gt; 5 ==&gt;   aBcdef   ghijklmnop qrstuvwxyz  1
   &gt;  SIZE:           5
   &gt; --------------------------------------------------------------------------
   &gt;  INPUT LINE:[  aBcdef   ghijklmnop qrstuvwxyz  1:|:2     333|333 a B cc    ]
   &gt;  default delimiters and reverse array order and count null fields:
   &gt; 1 ==&gt;
   &gt; 2 ==&gt;
   &gt; 3 ==&gt;
   &gt; 4 ==&gt; cc
   &gt; 5 ==&gt; B
   &gt; 6 ==&gt; a
   &gt; 7 ==&gt; 333|333
   &gt; 8 ==&gt;
   &gt; 9 ==&gt;
   &gt; 10 ==&gt;
   &gt; 11 ==&gt;
   &gt; 12 ==&gt; 1:|:2
   &gt; 13 ==&gt;
   &gt; 14 ==&gt; qrstuvwxyz
   &gt; 15 ==&gt; ghijklmnop
   &gt; 16 ==&gt;
   &gt; 17 ==&gt;
   &gt; 18 ==&gt; aBcdef
   &gt; 19 ==&gt;
   &gt; 20 ==&gt;
   &gt;  SIZE:          20
</pre>
        </blockquote>
      </blockquote><a name="5"></a>
    </div>
  </div>
</body>
