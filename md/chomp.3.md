<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c13">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>chomp(3f)</b> - [M_strings:TOKENS] Tokenize a string, consuming it one token per call <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>chomp</b>(source_string,token[,delimiters])
<br />
    character(len=*)                     :: source_string
    character(len=:),intent(out),token   :: token
    character(len=:),intent(in),optional :: delimiters
    integer                              :: chomp
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        The <b>CHOMP</b>(3f) function is used to isolate sequential tokens in a string, SOURCE_STRING. These tokens are delimited in the string by at least
        one of the characters in DELIMITERS. This routine consumes the source_string one token per call. It returns <b>-1</b> when complete. The default
        delimiter list is "space,tab,carriage return,newline".
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c14" colspan="1">SOURCE_STRING</td>
            <td>string to tokenize</td>
          </tr>
          <tr valign="top">
            <td class="c14" colspan="1">DELIMITERS</td>
            <td>list of separator characters</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c14" width="6%" nowrap="nowrap">TOKEN</td>
            <td valign="bottom">returned token</td>
          </tr>
          <tr valign="top">
            <td class="c14" width="6%" nowrap="nowrap">CHOMP</td>
            <td valign="bottom">status flag. 0 = success, <b>-1</b> = no tokens remain</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLES</a></h3>
      <blockquote>
        Sample program:
        <pre>
   program demo_chomp
<br />
   use M_strings, only : chomp
   implicit none
   character(len=100)            :: inline
   character(len=:),allocatable  :: token
   character(len=*),parameter    :: delimiters=' ;,'
   integer                       :: ios
   integer                       :: icount
   integer                       :: itoken
      icount=0
      do        ! read lines from stdin until end-of-file or error
         read (unit=*,fmt="(a)",iostat=ios) inline
         if(ios.ne.0)stop
         icount=icount+1
         itoken=0
         write(*,*)'INLINE ',trim(inline)
         do while ( chomp(inline,token,delimiters).ge. 0)
            itoken=itoken+1
            print *, itoken,'TOKEN=['//trim(token)//']'
         enddo
      enddo
<br />
   end program demo_chomp
</pre>
<p>
   sample input file
</p>
          <pre>
      
    this is a test of chomp; A:B :;,C;;
</pre>
<p>
sample output file
</p>
<pre>
    INLINE     this is a test of chomp; A:B :;,C;;
              1 TOKEN=[this]
              2 TOKEN=[is]
              3 TOKEN=[a]
              4 TOKEN=[test]
              5 TOKEN=[of]
              6 TOKEN=[chomp]
              7 TOKEN=[A:B]
              8 TOKEN=[:]
              9 TOKEN=[C]
<br />
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
