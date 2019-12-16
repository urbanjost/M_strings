<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c133">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>s2c(3f)</b> - [M_strings:ARRAY] convert character variable to array of characters with last element set to null <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="6">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>s2c</b>(<i>string</i>)
<br />
    character(len=*),intent=(in)  :: string
    character(len=1),allocatable  :: s2c(:)
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        Given a character variable convert it to an array of single-character character variables with the last element set to a null character. This is
        generally used to pass character variables to C procedures.
      </blockquote><a name="3"></a>
      <h3><a name="3">EXAMPLES</a></h3>
      <blockquote>
        Sample Program:
        <pre>
    program demo_s2c
    use M_strings, only : s2c
    implicit none
    character(len=*),parameter   :: string="single string"
    character(len=3),allocatable :: array(:)
       write(*,*)'INPUT STRING ',trim(string)
       ! put one character into each 3-character element of array
       array=s2c(string)
       ! write array with ASCII Decimal Equivalent below it except show
       ! unprintable characters like NULL as "XXX"
       write(*,'(1x,*("[",a3,"]":))')&amp;
            &amp; merge('XXX',array,ichar(array(:)(1:1)).lt.32)
       write(*,'(1x,*("[",i3,"]":))')&amp;
            &amp; ichar(array(:)(1:1))
    end program demo_s2c
<br />
</pre>
      </blockquote>Expected output:
      <pre>
   INPUT STRING single string
   [s  ][i  ][n  ][g  ][l  ][e  ][   ][s  ][t  ][r  ][i  ][n  ][g  ][XXX]
   [115][105][110][103][108][101][ 32][115][116][114][105][110][103][  0]
<br />
</pre><a name="4"></a>
    </div>
  </div>
</body>
