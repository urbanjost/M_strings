<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c64">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>isnumber(3f)</b> - [M_strings:NUMERIC] determine if a string represents a number <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>isnumber</b>(str,msg)
<br />
    character(len=*),intent(in)  :: str
    character(len=:),intent(out),allocatable,optional  :: msg
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <b>ISNUMBER</b>(3f) returns a value greater than zero if the string represents a number, and a number less than or equal to zero if it is a bad
        number. Blank characters are ignored.
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c65" width="6%" nowrap="nowrap">str</td>
            <td valign="bottom">the string to evaluate as to whether it represents a numeric value or not</td>
          </tr>
          <tr valign="top">
            <td class="c65" width="6%" nowrap="nowrap">msg</td>
            <td valign="bottom">An optional message describing the string</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c65" colspan="1">isnumber</td>
            <td>
              the following values are returned
              <table width="100%" cellpadding="3">
                <tr valign="top">
                  <td class="c65" colspan="1">1 for an integer</td>
                  <td>[-+]NNNNN</td>
                </tr>
                <tr valign="top">
                  <td class="c65" colspan="1">2 for a whole number</td>
                  <td>[-+]NNNNN.</td>
                </tr>
                <tr valign="top">
                  <td class="c65" colspan="1">3 for a real value</td>
                  <td>[-+]NNNNN.MMMM</td>
                </tr>
                <tr valign="top">
                  <td class="c65" colspan="1">4 for a exponential value</td>
                  <td>[-+]NNNNN.MMMM[-+]LLLL [-+]NNNNN.MMMM[ed][-+]LLLL</td>
                </tr>
              </table><!-- .PP -->
            </td>
          </tr>
        </table>values less than 1 represent an error
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLES</a></h3>
      <blockquote>
        As the example shows, you can use an internal <b>READ</b>(3f) along with the IOSTAT= parameter to check (and read) a string as well.
        <pre>
    program demo_isnumber
    use M_strings, only : isnumber
    implicit none
    character(len=256) :: line
    real               :: value
    integer            :: ios
    integer            :: answer
    character(len=256) :: message
    character(len=:),allocatable :: description
       write(*,*)'Begin entering values, one per line'
       do
          read(*,'(a)',iostat=ios)line
          !
          ! try string as number using list-directed input
          line=''
          read(line,*,iostat=ios,iomsg=message) value
          if(ios.eq.0)then
             write(*,*)'VALUE=',value
          else
             write(*,*)'ERROR:',ios,trim(message)
          endif
          !
          ! try string using isnumber(3f)
          answer=isnumber(line,msg=description)
          if(answer.gt.0)then
             write(*,*)' for ',trim(line),' ',answer,':',description
          else
             write(*,*)' ERROR for ',trim(line),' ',answer,':',description
          endif
          !
       enddo
    end program demo_isnumber
<br />
</pre>
      </blockquote>Example run
      <pre>
    Begin entering values
    ERROR:          -1 End of file
     ERROR for            -1 :null string
   10
    VALUE=   10.0000000
     for 10            1 :integer
   20
    VALUE=   20.0000000
     for 20            1 :integer
   20.
    VALUE=   20.0000000
     for 20.            2 :whole number
   30.1
    VALUE=   30.1000004
     for 30.1            3 :real number
   3e1
    VALUE=   30.0000000
     for 3e1            4 :value with exponent
   1-2
    VALUE=   9.99999978E-03
     for 1-2            4 :value with exponent
   100.22d-4
    VALUE=   1.00220004E-02
     for 100.22d-4            4 :value with exponent
   1--2
    ERROR:        5010 Bad real number in item 1 of list input
     ERROR for 1--2           -5 :bad number
   e
    ERROR:        5010 Bad real number in item 1 of list input
     ERROR for e           -6 :missing leading value before exponent
   e1
    ERROR:        5010 Bad real number in item 1 of list input
     ERROR for e1           -6 :missing leading value before exponent
   1e
    ERROR:        5010 Bad real number in item 1 of list input
     ERROR for 1e           -3 :missing exponent
   1e+
    ERROR:        5010 Bad real number in item 1 of list input
     ERROR for 1e+           -4 :missing exponent after sign
   1e+2.0
    ERROR:        5010 Bad real number in item 1 of list input
     ERROR for 1e+2.0           -5 :bad number
</pre>
    </div>
  </div>
</body>
