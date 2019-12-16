<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c24">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>crop(3f)</b> - [M_strings:WHITESPACE] trim leading blanks and trailing blanks from a string <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>crop</b>(<i>strin</i>) result (<i>strout</i>)
<br />
    character(len=*),intent(in)  :: strin
    character(len=:),allocatable :: strout
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        trim leading blanks from a string and return position of last non-blank character in the string.
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c25" width="6%" nowrap="nowrap">strin</td>
            <td valign="bottom">input string to trim leading and trailing space from</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c25" width="6%" nowrap="nowrap">strout</td>
            <td valign="bottom">cropped version of input string</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample program:
        <pre>
   program demo_crop
   use M_strings, only: crop
   implicit none
   character(len=20) ::  untrimmed = '   ABCDEFG abcdefg  '
      write(*,*) 'untrimmed string=[',untrimmed,']'
      write(*,*) 'cropped string=[',crop(untrimmed),']'
   end program demo_crop
<br />
</pre>Expected output
        <pre>
     untrimmed string=[   ABCDEFG abcdefg                      ]
     cropped string=[ABCDEFG abcdefg]
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
