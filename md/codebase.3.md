<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c17">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>codebase(3f)</b> - [M_strings:BASE] convert whole number in base 10 to string in base [2-36] <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="6">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
logical function <b>codebase</b>(in_base10,out_base,answer)
<br />
   integer,intent(in)           :: in_base10
   integer,intent(in)           :: out_base
   character(len=*),intent(out) :: answer
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <p>Convert a number from base 10 to base OUT_BASE. The function returns too big.</p>
        <p>The letters A,B,...,Z represent 10,11,...,36 in the base &gt; 10.</p>
      </blockquote>
      <p><a name="3"></a></p>
      <h3><a name="3">EXAMPLE</a></h3>
      <blockquote>
        Sample program:
        <pre>
   program demo_codebase
   use M_strings, only : codebase
   implicit none
   character(len=20) :: answer
   integer           :: i, j
   logical           :: ierr
   do j=1,100
      do i=2,36
         ierr=codebase(j,i,answer)
         write(*,*)'VALUE=',j,' BASE=',i,' ANSWER=',answer
      enddo
   enddo
   end program demo_codebase
<br />
</pre>
      </blockquote><a name="4"></a>
    </div>
  </div>
</body>
