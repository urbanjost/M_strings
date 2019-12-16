<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c108">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>noesc(3f)</b> - [M_strings:NONALPHA] convert non-printable characters to a space. <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="6">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
elemental function <b>noesc</b>(<i>INSTR</i>)
<br />
    character(len=*),intent(in) :: INSTR
    character(len=len(instr))   :: noesc
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        Convert non-printable characters to a space.
      </blockquote><a name="3"></a>
      <h3><a name="3">EXAMPLES</a></h3>
      <blockquote>
        Sample Program:
        <pre>
   program demo_noesc
<br />
    use M_strings, only : noesc
    character(len=128) :: ascii
    character(len=128) :: cleared
    ! fill variable with base ASCII character set
    do i=1,128
       ascii(i:i)=char(i-1)
    enddo
    cleared=noesc(ascii)
    write(*,*)'characters and their ADE (ASCII Decimal Equivalent)'
    call ade(ascii)
    write(*,*)'Cleared of non-printable characters'
    call ade(cleared)
    write(*,*)'Cleared string:'
    write(*,*)cleared
    contains
      subroutine ade(string)
      implicit none
      ! the string to print
      character(len=*),intent(in) :: string
      ! number of characters in string to print
      integer :: ilen
      ! counter used to step thru string
      integer :: i
         ! get trimmed length of input string
         ilen=len_trim(string(:len(string)))
<br />
         ! replace lower unprintable characters with spaces
         write(*,101)(merge(string(i:i),' ',&amp;
         &amp; ichar(string(i:i)).ge.32         &amp;
         &amp; .and.                            &amp;
         &amp; ichar(string(i:i)).le.126)       &amp;
         &amp; ,i=1,ilen)
<br />
         ! print ADE value of character underneath it
         write(*,202)     (ichar(string(i:i))/100,    i=1,ilen)
         write(*,202)(mod( ichar(string(i:i)),100)/10,i=1,ilen)
         write(*,202)(mod((ichar(string(i:i))),10),   i=1,ilen)
      ! format for printing string characters
      101   format(*(a1:))
      ! format for printing ADE values
      202   format(*(i1:))
      end subroutine ade
    end program demo_noesc
<br />
</pre>
        <blockquote>
          Expected output
          <p>The string is printed with the ADE value vertically beneath. The original string has all the ADEs from 000 to 127. After <b>NOESC</b>(3f) is
          called on the string all the "non-printable" characters are replaced with a space (ADE of 032).</p>
        </blockquote>
        <p>characters and their ADE (ASCII Decimal Equivalent)</p>
        <pre>
   &gt;                                 !"#$%&amp;'()*+,-./0123456789:;&lt;=&gt
   ;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_'abcdefghijklmnopqrstuvwxyz{|}~
   &gt;0000000000000000000000000000000000000000000000000000000000000000000000000
   0000000000000000000000000001111111111111111111111111111
   &gt;0000000000111111111122222222223333333333444444444455555555556666666666777
   7777777888888888899999999990000000000111111111122222222
   &gt;0123456789012345678901234567890123456789012345678901234567890123456789012
   3456789012345678901234567890123456789012345678901234567
<br />
</pre>Cleared of non-printable characters
        <pre>
   &gt;                                 !"#$%&amp;'()*+,-./0123456789:;&lt;=&gt;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ
   [\]^_'abcdefghijklmnopqrstuvwxyz{|}~
   &gt;0000000000000000000000000000000000000000000000000000000000000000000000000
   000000000000000000000000000111111111111111111111111111
   &gt;3333333333333333333333333333333333333333444444444455555555556666666666777
   777777788888888889999999999000000000011111111112222222
   &gt;2222222222222222222222222222222223456789012345678901234567890123456789012
   345678901234567890123456789012345678901234567890123456
<br />
</pre>Cleared string:
        <blockquote>
          <table cellpadding="3">
            <tr valign="top">
              <td class="c109" width="6%" nowrap="nowrap">&gt;</td>
              <td valign="bottom">!"#$%&amp;'()*+,-./0123456789:;&lt;=&gt;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ
	      [\]^_'abcdefghijklmnopqrstuvwxyz{|}~</td>
            </tr>
          </table>
        </blockquote>
      </blockquote><a name="4"></a>
    </div>
  </div>
</body>
