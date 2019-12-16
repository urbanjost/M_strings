<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c179">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>upper(3f)</b> - [M_strings:CASE] changes a string to uppercase <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="9">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
elemental pure function <b>upper</b>(str,begin,end) result (<i>string</i>)
<br />
    character(*), intent(in)    :: str
    integer,optional,intent(in) :: begin,end
    character(len(str))         :: string  ! output string
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <b>upper</b>(<i>string</i>) returns a copy of the input <i>string</i> with all characters converted in the optionally specified range to uppercase,
        assuming ASCII character sets are being used. If no range is specified the entire <i>string</i> is converted to uppercase.
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c180" width="6%" nowrap="nowrap">str</td>
            <td valign="bottom"><i>string</i> to convert to uppercase</td>
          </tr>
          <tr valign="top">
            <td class="c180" width="6%" nowrap="nowrap">begin</td>
            <td valign="bottom">optional starting position in "str" to begin converting to uppercase</td>
          </tr>
          <tr valign="top">
            <td class="c180" width="6%" nowrap="nowrap">end</td>
            <td valign="bottom">optional ending position in "str" to stop converting to uppercase</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RESULTS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c180" width="6%" nowrap="nowrap">upper</td>
            <td valign="bottom">copy of the input <i>string</i> with all characters converted to uppercase over optionally specified range.</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">TRIVIA</a></h3>
      <blockquote>
        The terms "uppercase" and "lowercase" date back to the early days of the mechanical printing press. Individual metal alloy casts of each needed
        letter, or punctuation symbol, were meticulously added to a press block, by hand, before rolling out copies of a page. These metal casts were stored
        and organized in wooden cases. The more often needed miniscule letters were placed closer to hand, in the lower cases of the work bench. The less
        often needed, capitalized, majuscule letters, ended up in the harder to reach upper cases.
      </blockquote><a name="6"></a>
      <h3><a name="6">EXAMPLE</a></h3>
      <blockquote>
        Sample program:
        <pre>
    program demo_upper
    use M_strings, only: upper
    implicit none
    character(len=:),allocatable  :: s
       s=' ABCDEFG abcdefg '
       write(*,*) 'mixed-case input string is ....',s
       write(*,*) 'upper-case output string is ...',upper(s)
       write(*,*) 'make first character uppercase  ... ',upper('this is a sentence.',1,1)
       write(*,'(1x,a,*(a:,"+"))') 'UPPER(3f) is elemental ==&gt;',upper(["abc","def","ghi"])
    end program demo_upper
<br />
</pre>Expected output
        <pre>
    mixed-case input string is .... ABCDEFG abcdefg
    upper-case output string is ... ABCDEFG ABCDEFG
    make first character uppercase  ... This is a sentence.
    UPPER(3f) is elemental ==&gt;ABC+DEF+GHI
</pre>
      </blockquote><a name="7"></a>
    </div>
  </div>
</body>
