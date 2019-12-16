<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c31">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>delim(3f)</b> - [M_strings:TOKENS] parse a string and store tokens into an array <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="7">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
subroutine <b>delim</b>(line,array,n,icount,ibegin,iterm,ilen,dlim)
<br />
    character(len=*),intent(in)  :: line
    integer,integer(in)          :: n
    integer,intent(out)          :: icount
    character(len=*)             :: array(n)
    integer,intent(out)          :: ibegin(n)
    integer,intent(out)          :: iterm(n)
    integer,intent(out)          :: ilen
    character(len=*)             :: dlim
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <p>Given a LINE of structure " par1 par2 par3 ... parn " store each <b>par</b>(n) into a separate variable in ARRAY (UNLESS
        <b>ARRAY</b>(1).eq.'#N#')</p>
        <p>Also set ICOUNT to number of elements of array initialized, and return beginning and ending positions for each element in <b>IBEGIN</b>(N) and
        <b>ITERM</b>(N).</p>
        <p>Return position of last non-blank character (even if more than N elements were found) in ILEN</p>
        <p>No quoting or escaping of delimiter is allowed, so the delimiter character can not be placed in a token.</p>
        <p>No checking for more than N parameters; If any more they are ignored.</p>
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c32" width="6%" nowrap="nowrap">LINE</td>
            <td valign="bottom">input string to parse into tokens</td>
          </tr>
          <tr valign="top">
            <td colspan="1"><b>ARRAY</b>(N)</td>
            <td>array that receives tokens</td>
          </tr>
          <tr valign="top">
            <td class="c32" width="6%" nowrap="nowrap">N</td>
            <td valign="bottom">size of arrays ARRAY, IBEGIN, ITERM</td>
          </tr>
          <tr valign="top">
            <td class="c32" width="6%" nowrap="nowrap">ICOUNT</td>
            <td valign="bottom">number of tokens found <b>IBEGIN</b>(N) starting columns of tokens found</td>
          </tr>
          <tr valign="top">
            <td colspan="1"><b>ITERM</b>(N)</td>
            <td>ending columns of tokens found</td>
          </tr>
          <tr valign="top">
            <td class="c32" width="6%" nowrap="nowrap">ILEN</td>
            <td valign="bottom">position of last non-blank character in input string LINE</td>
          </tr>
          <tr valign="top">
            <td class="c32" width="6%" nowrap="nowrap">DLIM</td>
            <td valign="bottom">delimiter characters</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">EXAMPLES</a></h3>
      <blockquote>
        Sample program:
        <pre>
    program demo_delim
<br />
    use M_strings, only: delim
    character(len=80) :: line
    character(len=80) :: dlm
    integer,parameter :: n=10
    character(len=20) :: array(n)=' '
    integer           :: ibegin(n),iterm(n)
    line=' first  second 10.3 words_of_stuff  '
    do i20=1,4
       ! change delimiter list and what is calculated or parsed
       if(i20.eq.1)dlm=' '
       if(i20.eq.2)dlm='o'
       if(i20.eq.3)dlm=' aeiou'    ! NOTE SPACE IS FIRST
       if(i20.eq.3)ARRAY(1)='#N#'  ! QUIT RETURNING STRING ARRAY
       if(i20.eq.4)line='AAAaBBBBBBbIIIIIi  J K L'
<br />
       ! write out a break line composed of =========== ..
       write(*,'(57("="))')
       ! show line being parsed
       write(*,'(a)')'PARSING=['//trim(line)//'] on '//trim(dlm)
       ! call parsing procedure
       call delim(line,array,n,icount,ibegin,iterm,ilen,dlm)
       write(*,*)'number of tokens found=',icount
       write(*,*)'last character in column ',ilen
       if(icount.gt.0)then
          if(ilen.ne.iterm(icount))then
             write(*,*)'ignored from column ',iterm(icount)+1,' to ',ilen
          endif
          do i10=1,icount
             ! check flag to see if ARRAY() was set
             if(array(1).ne.'#N#')then
                ! from returned array
                write(*,'(a,a,a)',advance='no')&amp;
                &amp;'[',array(i10)(:iterm(i10)-ibegin(i10)+1),']'
             endif
          enddo
          ! using start and end positions in IBEGIN() and ITERM()
          write(*,*)
          do i10=1,icount
             ! from positions in original line
             write(*,'(a,a,a)',advance='no')&amp;
             &amp;'[',line(ibegin(i10):iterm(i10)),']'
          enddo
          write(*,*)
       endif
    enddo
    end program demo_delim
<br />
</pre>Expected output
      </blockquote><a name="5"></a>
    </div>
  </div>
</body>
