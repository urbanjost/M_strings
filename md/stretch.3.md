<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c148">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>stretch(3f)</b> - [M_strings:LENGTH] return string padded to at least specified length <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>stretch</b>(str,length,pattern,suffix) <b>result</b>(<i>strout</i>)
<br />
    character(len=*),intent(in)         :: str
    integer,intent(in)                  :: length
    character(len=*)intent(in),optional :: pattern
    character(len=*)intent(in),optional :: suffix
    character(len=:),allocatable        :: strout
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <b>stretch</b>(3f) pads a string with spaces to at least the specified length. If the trimmed input string is longer than the requested length the
        original string is returned trimmed of trailing spaces.
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c149" width="6%" nowrap="nowrap">str</td>
            <td valign="bottom">the input string to return trimmed, but then padded to the specified length if shorter than length</td>
          </tr>
          <tr valign="top">
            <td class="c149" width="6%" nowrap="nowrap">length</td>
            <td valign="bottom">The minimum string length to return</td>
          </tr>
          <tr valign="top">
            <td class="c149" colspan="1">pattern</td>
            <td>optional string to use as padding. Defaults to a space.</td>
          </tr>
          <tr valign="top">
            <td class="c149" width="6%" nowrap="nowrap">suffix</td>
            <td valign="bottom">optional string to append to output string</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c150" width="6%" nowrap="nowrap">strout</td>
            <td valign="bottom">The input string padded to the requested length or the trimmed input string if the input string is longer than the requested
            length.</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample Program:
        <pre>
    program demo_stretch
     use M_strings, only : stretch
     implicit none
     character(len=10)            :: string='abcdefghij'
     character(len=:),allocatable :: answer
     integer                      :: i
        answer=stretch(string,5)
        write(*,'("[",a,"]")') answer
        answer=stretch(string,20)
        write(*,'("[",a,"]")') answer
        i=30
        write(*,*)
        write(*,'(1x,a,i0)') stretch('CHAPTER 1 : The beginning ',i,'.'), 1
        write(*,'(1x,a,i0)') stretch('CHAPTER 2 : The end ',i,'.'),       1234
        write(*,'(1x,a,i0)') stretch('APPENDIX ',i,'.'),                  1235
        write(*,*)
        write(*,'(1x,a,i7)') stretch('CHAPTER 1 : The beginning ',i,'.'), 1
        write(*,'(1x,a,i7)') stretch('CHAPTER 2 : The end ',i,'.'),       1234
        write(*,'(1x,a,i7)') stretch('APPENDIX ',i,'.'),                  1235
        write(*,*)
        write(*,*) stretch('CHAPTER 1 : The beginning ',i,suffix=': '), 1
        write(*,*) stretch('CHAPTER 2 : The end ',i,suffix=': '),       1234
        write(*,*) stretch('APPENDIX ',i,suffix=': '),                  1235
    end program demo_stretch
<br />
</pre>
      </blockquote>Results:
      <pre>
   [abcdefghij]
   [abcdefghij          ]
<br />
    CHAPTER 1 : The beginning ....1
    CHAPTER 2 : The end ..........1234
    APPENDIX .....................1235
<br />
    CHAPTER 1 : The beginning ....      1
    CHAPTER 2 : The end ..........   1234
    APPENDIX .....................   1235
<br />
    CHAPTER 1 : The beginning     :            1
    CHAPTER 2 : The end           :         1234
    APPENDIX                      :         1235
<br />
</pre><a name="6"></a>
    </div>
  </div>
</body>
