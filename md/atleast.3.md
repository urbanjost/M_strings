<?
<body>
  <a name="top" id="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c1">
      </div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>atleast(3f)</b> - [M_strings:LENGTH] return string padded to at least specified length <b>(LICENSE:PD)</b> <b>!!</b>
      </blockquote><a name="contents" id="contents"></a>

      <h3><a name="8">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
!!
<b>function</b> <b>atleast</b>(str,length,pattern) <b>result</b>(strout)
!!
</pre>

        <blockquote>
          <table cellpadding="3">

            <tr valign="top">
              <td colspan="1"><b>character</b>(len=*)</td>
              <td>:: <i>str</i></td>
            </tr>

            <tr valign="top">
              <td colspan="1"><b>integer,intent</b>(in)</td>
              <td>:: <i>length</i></td>
            </tr>

            <tr valign="top">
              <td colspan="1"><b>character</b>(len=max(<i>length</i>,len(trim(line)))) ::</td>
              <td class="c2">strout</td>
            </tr>

            <tr valign="top">
              <td colspan="1"><b>character</b>(len=*),optional</td>
              <td>:: <i>pattern</i></td>
            </tr>

          </table>
        </blockquote>
        <pre>

</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        <b>atleast</b>(3f) pads a string with spaces to at least the specified <i>length</i>. If the trimmed input string is longer than the requested
        <i>length</i> the trimmed string is returned.
      </blockquote><a name="3"></a>

      <h3><a name="3">OPTIONS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">str</td>

            <td valign="bottom">the input string to return trimmed, but then padded to the specified <i>length</i> if shorter than <i>length</i></td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">length</td>

            <td valign="bottom">The minimum string <i>length</i> to return</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">pattern</td>
            <td>optional string to use as padding. Defaults to a space.</td>
          </tr>

        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">RETURNS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">strout</td>

            <td valign="bottom">The input string padded to the requested <i>length</i> or the trimmed input string if the input string is longer than the
            requested <i>length</i>. !!</td>
          </tr>

        </table>
      </blockquote><a name="5"></a>

      <h3><a name="5">EXAMPLE</a></h3>

      <blockquote>
        !! Sample Program: !! program demo_atleast use M_strings, only : atleast implicit none

        <blockquote>
          <table cellpadding="3">

            <tr valign="top">
              <td colspan="1"><b>character</b>(len=10)</td>
              <td>:: string='abcdefghij' <b>character</b>(len=:),allocatable :: answer</td>
            </tr>

            <tr valign="top">
              <td class="c3" colspan="1">integer</td>
              <td>
                :: i answer=<b>atleast</b>(string,5) <b>write</b>(*,'("[",a,"]")') answer answer=<b>atleast</b>(string,20) <b>write</b>(*,'("[",a,"]")')
                answer i=30 <b>write</b>(*,*) <b>write</b>(*,'(1x,a,i0)') <b>atleast</b>('CHAPTER 1 : The beginning ',i,'.'), 1

                <table width="100%" cellpadding="3">

                  <tr valign="top">
                    <td colspan="1"><b>write</b>(*,'(1x,a,i0)') <b>atleast</b>('CHAPTER 2 : The end ',i,'.'),</td>
                    <td>1234</td>
                  </tr>

                  <tr valign="top">
                    <td colspan="1"><b>write</b>(*,'(1x,a,i0)') <b>atleast</b>('APPENDIX ',i,'.'),</td>
                    <td>1235 <b>write</b>(*,*) <b>write</b>(*,'(1x,a,i7)') <b>atleast</b>('CHAPTER 1 : The beginning ',i,'.'), 1</td>
                  </tr>

                  <tr valign="top">
                    <td colspan="1"><b>write</b>(*,'(1x,a,i7)') <b>atleast</b>('CHAPTER 2 : The end ',i,'.'),</td>
                    <td>1234</td>
                  </tr>

                  <tr valign="top">
                    <td colspan="1"><b>write</b>(*,'(1x,a,i7)') <b>atleast</b>('APPENDIX ',i,'.'),</td>
                    <td>1235 end program demo_atleast</td>
                  </tr>

                </table><!-- .RE -->
              </td>
            </tr>

          </table>
        </blockquote>

        <p>Results:</p>
        <pre>
  [abcdefghij]
  [abcdefghij          ]
<br />   CHAPTER 1 : The beginning ....1
   CHAPTER 2 : The end ..........1234
   APPENDIX .....................1235
<br />   CHAPTER 1 : The beginning ....      1
   CHAPTER 2 : The end ..........   1234
   APPENDIX .....................   1235
</pre>
      </blockquote><a name="6"></a>

    </div>
  </div>
</body>
</html>
