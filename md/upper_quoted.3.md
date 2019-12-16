<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c183">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>upper_quoted(3f)</b> - [M_strings:CASE] elemental function converts string to majuscule skipping strings quoted per Fortran syntax rules

        <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
elemental pure function <b>upper_quoted</b>(<i>str</i>) result (<i>string</i>)
<br />
    character(*), intent(in)    :: str
    character(len(str))         :: string  ! output string
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <b>upper_quoted</b>(<i>string</i>) returns a copy of the input <i>string</i> with all not-quoted characters converted to uppercase, assuming ASCII
        character sets are being used. The quoting rules are the same as for Fortran source. Either a single or double quote starts a quoted <i>string</i>,
        and a quote character of the same type is doubled when it appears internally in the quoted <i>string</i>. If a double quote quotes the <i>string</i>
        single quotes may appear in the quoted <i>string</i> as single characters, and vice-versa for single quotes.
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c184" width="6%" nowrap="nowrap">str</td>
            <td valign="bottom"><i>string</i> to convert to uppercase</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RESULTS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c185" width="6%" nowrap="nowrap">upper</td>
            <td valign="bottom">copy of the input <i>string</i> with all unquoted characters converted to uppercase</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample program:
        <pre>
    program demo_upper_quoted
    use M_strings, only: upper_quoted
    implicit none
    character(len=:),allocatable  :: s
    s=' ABCDEFG abcdefg "Double-Quoted" ''Single-Quoted'' "with "" Quote" everything else'
       write(*,*) 'mixed-case input string is ....',s
       write(*,*) 'upper-case output string is ...',upper_quoted(s)
       write(*,*) 'make first character uppercase  ... ',upper_quoted('this is a sentence.')
       write(*,'(1x,a,*(a:,"+"))') 'upper_quoted(3f) is elemental ==&gt;',upper_quoted(["abc","def","ghi"])
    end program demo_upper_quoted
<br />
</pre>Expected output:
        <pre>
    mixed-case input string is .... ABCDEFG abcdefg "Double-Quoted" 'Single-Quoted' "with "" Quote" everything else
    upper-case output string is ... ABCDEFG ABCDEFG "Double-Quoted" 'Single-Quoted' "with "" Quote" EVERYTHING ELSE
    make first character uppercase  ... THIS IS A SENTENCE.
    upper_quoted(3f) is elemental ==&gt;ABC+DEF+GHI
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
