<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c160">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>strtok(3f)</b> - [M_strings:TOKENS] Tokenize a string <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>strtok</b>(source_string,itoken,token_start,token_end,delimiters)
<b>result</b>(<i>strtok_status</i>)
</pre>
        <blockquote>
          <table cellpadding="3">
            <tr valign="top">
              <td class="c161" colspan="1">logical</td>
              <td>:: <i>strtok_status</i> ! returned value</td>
            </tr>
            <tr valign="top">
              <td colspan="1"><b>character</b>(len=*),intent(<i>in</i>)</td>
              <td>:: source_string ! string to tokenize</td>
            </tr>
            <tr valign="top">
              <td colspan="1"><b>integer,intent</b>(<i>inout</i>)</td>
              <td>:: itoken ! token count since started</td>
            </tr>
            <tr valign="top">
              <td colspan="1"><b>integer,intent</b>(<i>out</i>)</td>
              <td>:: token_start ! beginning of token</td>
            </tr>
            <tr valign="top">
              <td colspan="1"><b>integer,intent</b>(<i>inout</i>)</td>
              <td>:: token_end ! end of token</td>
            </tr>
            <tr valign="top">
              <td colspan="1"><b>character</b>(len=*),intent(<i>in</i>)</td>
              <td>:: delimiters ! list of separator characters</td>
            </tr>
          </table>
        </blockquote>
        <pre>
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        The <b>STRTOK</b>(3f) function is used to isolate sequential tokens <i>in</i> a string, SOURCE_STRING. These tokens are delimited <i>in</i> the
        string by at least one of the characters <i>in</i> DELIMITERS. The first time that <b>STRTOK</b>(3f) is called, ITOKEN should be specified as zero.
        Subsequent calls, wishing to obtain
        <table cellpadding="3">
          <tr valign="top">
            <td colspan="1"><b>further tokens from the same string, should pass back</b> <i>in</i> TOKEN_END</td>
            <td>and ITOKEN until the function result returns .false.</td>
          </tr>
        </table>This routine assumes no other calls are made to it using any other input string while it is processing an input line.
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c161" colspan="1">source_string</td>
            <td>input string to parse</td>
          </tr>
          <tr valign="top">
            <td class="c161" width="6%" nowrap="nowrap">itoken</td>
            <td valign="bottom">token count should be set to zero for a new string</td>
          </tr>
          <tr valign="top">
            <td class="c161" colspan="1">delimiters</td>
            <td>characters used to determine the end of tokens</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RETURN</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c161" colspan="1">token_start</td>
            <td>beginning position <i>in</i> SOURCE_STRING where token was found</td>
          </tr>
          <tr valign="top">
            <td class="c161" colspan="1">token_end</td>
            <td>ending position <i>in</i> SOURCE_STRING where token was found <i>strtok_status</i></td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLES</a></h3>
      <blockquote>
        Sample program:
        <pre>
    !===============================================================================
    program demo_strtok
    use M_strings, only : strtok
    character(len=264)          :: inline
    character(len=*),parameter  :: delimiters=' ;,'
    integer                     :: ios
    !-------------------------------------------------------------------------------
       do                        ! read lines from stdin until end-of-file or error
          read (unit=*,fmt="(a)",iostat=ios) inline
          if(ios.ne.0)stop
          itoken=0 ! must set ITOKEN=0 before looping on strtok(3f) on a new string.
          do while ( strtok(inline,itoken,istart,iend,delimiters) )
             print *, itoken,'TOKEN=['//(inline(istart:iend))//']',istart,iend
          enddo
       enddo
    end program demo_strtok
    !===============================================================================
<br />
    sample input file
<br />
     this is a test of strtok; A:B :;,C;;
<br />
</pre>
        <blockquote>
          sample output file
          <table cellpadding="3">
            <tr valign="top">
              <td class="c161" width="6%" nowrap="nowrap">1</td>
              <td valign="bottom">TOKEN=[this] 2 5</td>
            </tr>
            <tr valign="top">
              <td class="c161" width="6%" nowrap="nowrap">2</td>
              <td valign="bottom">TOKEN=[is] 7 8</td>
            </tr>
            <tr valign="top">
              <td class="c161" width="6%" nowrap="nowrap">3</td>
              <td valign="bottom">TOKEN=[a] 10 10</td>
            </tr>
            <tr valign="top">
              <td class="c161" width="6%" nowrap="nowrap">4</td>
              <td valign="bottom">TOKEN=[test] 12 15</td>
            </tr>
            <tr valign="top">
              <td class="c161" width="6%" nowrap="nowrap">5</td>
              <td valign="bottom">TOKEN=[of] 17 18</td>
            </tr>
            <tr valign="top">
              <td class="c161" width="6%" nowrap="nowrap">6</td>
              <td valign="bottom">TOKEN=[strtok] 20 25</td>
            </tr>
            <tr valign="top">
              <td class="c161" width="6%" nowrap="nowrap">7</td>
              <td valign="bottom">TOKEN=[A:B] 28 30</td>
            </tr>
            <tr valign="top">
              <td class="c161" width="6%" nowrap="nowrap">8</td>
              <td valign="bottom">TOKEN=[:] 32 32</td>
            </tr>
            <tr valign="top">
              <td class="c161" width="6%" nowrap="nowrap">9</td>
              <td valign="bottom">TOKEN=[C] 35 35</td>
            </tr>
          </table>
        </blockquote>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
