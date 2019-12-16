<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c93">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>matchw(3f)</b> - [M_strings:COMPARE] compare given string for match to pattern which may contain wildcard characters <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
logical function <b>matchw</b>(<i>string</i>, pattern )
<br />
    character(len=*),intent(in) :: string
    character(len=*),intent(in) :: pattern
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <p><b>matchw</b>(3f) compares given <i>string</i> for match to pattern which may contain wildcard characters.</p>
        <p>In this version to get a match entire <i>string</i> must be described by pattern. Trailing whitespace is significant, so trim the input
        <i>string</i> to have trailing whitespace ignored.</p>
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c94" width="6%" nowrap="nowrap">string</td>
            <td valign="bottom">the input <i>string</i> to test to see if it contains the pattern.</td>
          </tr>
          <tr valign="top">
            <td class="c95" colspan="1">pattern</td>
            <td>
              the following simple globbing options are available
              <table width="100%" cellpadding="3">
                <tr valign="top">
                  <td class="c95" width="6%" nowrap="nowrap">o</td>
                  <td valign="bottom">"?" matching any one character</td>
                </tr>
                <tr valign="top">
                  <td class="c95" width="6%" nowrap="nowrap">o</td>
                  <td valign="bottom">"*" matching zero or more characters. Do NOT use adjacent asterisks.</td>
                </tr>
                <tr valign="top">
                  <td class="c95" width="6%" nowrap="nowrap">o</td>
                  <td valign="bottom">Both strings may have trailing spaces which are ignored.</td>
                </tr>
                <tr valign="top">
                  <td class="c95" width="6%" nowrap="nowrap">o</td>
                  <td valign="bottom">There is no escape character, so matching strings with literal question mark and asterisk is problematic.</td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">EXAMPLES</a></h3>
      <blockquote>
        Example program
        <pre>
   program demo_matchw
   implicit none
   ! This main() routine passes a bunch of test strings into the above code.
   ! In performance comparison mode, it does that over and over.  Otherwise,
   ! it does it just once.  Either way, it outputs a passed/failed result.
   !
   integer :: nReps
   logical :: allpassed
   integer :: i
    allpassed = .true.
<br />
    nReps = 10000
    nReps = 1     ! Can choose as many repetitions as you're expecting in the real world.
<br />
    do i=1,nReps
     ! Cases with repeating character sequences.
     allpassed=allpassed .and. test("a*abab", "a*b", .true.)
     !!cycle
     allpassed=allpassed .and. test("ab", "*?", .true.)
     allpassed=allpassed .and. test("abc", "*?", .true.)
     allpassed=allpassed .and. test("abcccd", "*ccd", .true.)
     allpassed=allpassed .and. test("bLah", "bLaH", .false.)
     allpassed=allpassed .and. test("mississippi", "*sip*", .true.)
     allpassed=allpassed .and. test("xxxx*zzzzzzzzy*f", "xxx*zzy*f", .true.)
     allpassed=allpassed .and. test("xxxx*zzzzzzzzy*f", "xxxx*zzy*fffff", .false.)
     allpassed=allpassed .and. test("mississipissippi", "*issip*ss*", .true.)
     allpassed=allpassed .and. test("xxxxzzzzzzzzyf", "xxxx*zzy*fffff", .false.)
     allpassed=allpassed .and. test("xxxxzzzzzzzzyf", "xxxx*zzy*f", .true.)
     allpassed=allpassed .and. test("xyxyxyzyxyz", "xy*z*xyz", .true.)
     allpassed=allpassed .and. test("xyxyxyxyz", "xy*xyz", .true.)
     allpassed=allpassed .and. test("mississippi", "mi*sip*", .true.)
     allpassed=allpassed .and. test("ababac", "*abac*", .true.)
     allpassed=allpassed .and. test("aaazz", "a*zz*", .true.)
     allpassed=allpassed .and. test("a12b12", "*12*23", .false.)
     allpassed=allpassed .and. test("a12b12", "a12b", .false.)
     allpassed=allpassed .and. test("a12b12", "*12*12*", .true.)
<br />
     ! Additional cases where the '*' char appears in the tame string.
     allpassed=allpassed .and. test("*", "*", .true.)
     allpassed=allpassed .and. test("a*r", "a*", .true.)
     allpassed=allpassed .and. test("a*ar", "a*aar", .false.)
<br />
     ! More double wildcard scenarios.
     allpassed=allpassed .and. test("XYXYXYZYXYz", "XY*Z*XYz", .true.)
     allpassed=allpassed .and. test("missisSIPpi", "*SIP*", .true.)
     allpassed=allpassed .and. test("mississipPI", "*issip*PI", .true.)
     allpassed=allpassed .and. test("xyxyxyxyz", "xy*xyz", .true.)
     allpassed=allpassed .and. test("miSsissippi", "mi*sip*", .true.)
     allpassed=allpassed .and. test("miSsissippi", "mi*Sip*", .false.)
     allpassed=allpassed .and. test("abAbac", "*Abac*", .true.)
     allpassed=allpassed .and. test("aAazz", "a*zz*", .true.)
     allpassed=allpassed .and. test("A12b12", "*12*23", .false.)
     allpassed=allpassed .and. test("a12B12", "*12*12*", .true.)
     allpassed=allpassed .and. test("oWn", "*oWn*", .true.)
<br />
     ! Completely tame (no wildcards) cases.
     allpassed=allpassed .and. test("bLah", "bLah", .true.)
<br />
     ! Simple mixed wildcard tests suggested by IBMer Marlin Deckert.
     allpassed=allpassed .and. test("a", "*?", .true.)
<br />
     ! More mixed wildcard tests including coverage for false positives.
     allpassed=allpassed .and. test("a", "??", .false.)
     allpassed=allpassed .and. test("ab", "?*?", .true.)
     allpassed=allpassed .and. test("ab", "*?*?*", .true.)
     allpassed=allpassed .and. test("abc", "?**?*?", .true.)
     allpassed=allpassed .and. test("abc", "?**?*&amp;?", .false.)
     allpassed=allpassed .and. test("abcd", "?b*??", .true.)
     allpassed=allpassed .and. test("abcd", "?a*??", .false.)
     allpassed=allpassed .and. test("abcd", "?**?c?", .true.)
     allpassed=allpassed .and. test("abcd", "?**?d?", .false.)
     allpassed=allpassed .and. test("abcde", "?*b*?*d*?", .true.)
<br />
     ! Single-character-match cases.
     allpassed=allpassed .and. test("bLah", "bL?h", .true.)
     allpassed=allpassed .and. test("bLaaa", "bLa?", .false.)
     allpassed=allpassed .and. test("bLah", "bLa?", .true.)
     allpassed=allpassed .and. test("bLaH", "?Lah", .false.)
     allpassed=allpassed .and. test("bLaH", "?LaH", .true.)
<br />
     ! Many-wildcard scenarios.
     allpassed=allpassed .and. test(&amp;
     &amp;"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&amp
     &ampaaaaaaaaaaaaaaaaaaaaaab",&amp;
     &amp;"a*a*a*a*a*a*aa*aaa*a*a*b",&amp;
     &amp;.true.)
     allpassed=allpassed .and. test(&amp;
     &amp;"abababababababababababababababababababaacacacacacacacadaeafagahaiaja&amp
     &ampkalaaaaaaaaaaaaaaaaaffafagaagggagaaaaaaaab",&amp;
     &amp;"*a*b*ba*ca*a*aa*aaa*fa*ga*b*",&amp;
     &amp;.true.)
     allpassed=allpassed .and. test(&amp;
     &amp;"abababababababababababababababababababaacacacacacacacadaeafagahaiaja&amp
     &ampkalaaaaaaaaaaaaaaaaaffafagaagggagaaaaaaaab",&amp;
     &amp;"*a*b*ba*ca*a*x*aaa*fa*ga*b*",&amp;
     &amp;.false.)
     allpassed=allpassed .and. test(&amp;
     &amp;"abababababababababababababababababababaacacacacacacacadaeafagahaiaja&amp
     &ampkalaaaaaaaaaaaaaaaaaffafagaagggagaaaaaaaab",&amp;
     &amp;"*a*b*ba*ca*aaaa*fa*ga*gggg*b*",&amp;
     &amp;.false.)
     allpassed=allpassed .and. test(&amp;
     &amp;"abababababababababababababababababababaacacacacacacacadaeafagahaiaja&amp
     &ampkalaaaaaaaaaaaaaaaaaffafagaagggagaaaaaaaab",&amp;
     &amp;"*a*b*ba*ca*aaaa*fa*ga*ggg*b*",&amp;
     &amp;.true.)
     allpassed=allpassed .and. test("aaabbaabbaab", "*aabbaa*a*", .true.)
     allpassed=allpassed .and. test("a*a*a*a*a*a*a*a*a*a*a*a*a*a*a*a*a*", &amp
     &amp"a*a*a*a*a*a*a*a*a*a*a*a*a*a*a*a*a*", .true.)
     allpassed=allpassed .and. test("aaaaaaaaaaaaaaaaa", &amp
     &amp"*a*a*a*a*a*a*a*a*a*a*a*a*a*a*a*a*a*", .true.)
     allpassed=allpassed .and. test("aaaaaaaaaaaaaaaa", &amp
     &amp"*a*a*a*a*a*a*a*a*a*a*a*a*a*a*a*a*a*", .false.)
     allpassed=allpassed .and. test(&amp;
     &amp;"abc*abcd*abcde*abcdef*abcdefg*abcdefgh*abcdefghi*abcdefghij*&amp
     &ampabcdefghijk*abcdefghijkl*abcdefghijklm*abcdefghijklmn",&amp;
     &amp; "abc*abc*abc*abc*abc*abc*abc*abc*abc*abc*abc*abc*abc*abc*abc*abc*abc*",&amp;
     &amp;.false.)
     allpassed=allpassed .and. test(&amp;
     &amp;"abc*abcd*abcde*abcdef*abcdefg*abcdefgh*abcdefghi*abcdefghij*&amp
     &ampabcdefghijk*abcdefghijkl*abcdefghijklm*abcdefghijklmn",&amp;
     &amp;"abc*abc*abc*abc*abc*abc*abc*abc*abc*abc*abc*abc*",&amp;
     &amp;.true.)
     allpassed=allpassed .and. test("abc*abcd*abcd*abc*abcd", "abc*abc*abc*abc*abc", .false.)
     allpassed=allpassed .and. test( "abc*abcd*abcd*abc*abcd*abcd*abc*abcd*abc*abc*abcd", &amp;
     &amp;"abc*abc*abc*abc*abc*abc*abc*abc*abc*abc*abcd",&amp;
     &amp;.true.)
     allpassed=allpassed .and. test("abc", "********a********b********c********", .true.)
     allpassed=allpassed .and. test("********a********b********c********", "abc", .false.)
     allpassed=allpassed .and. test("abc", "********a********b********b********", .false.)
     allpassed=allpassed .and. test("*abc*", "***a*b*c***", .true.)
<br />
     ! A case-insensitive algorithm test.
     ! allpassed=allpassed .and. test("mississippi", "*issip*PI", .true.)
    enddo
<br />
    if (allpassed)then
       write(*,'(a)')"Passed",nReps
    else
       write(*,'(a)')"Failed"
    endif
   contains
   ! This is a test program for wildcard matching routines.  It can be used
   ! either to test a single routine for correctness, or to compare the timings
   ! of two (or more) different wildcard matching routines.
   !
   function test(tame, wild, bExpectedResult) result(bpassed)
   use M_strings, only : matchw
      character(len=*) :: tame
      character(len=*) :: wild
      logical          :: bExpectedResult
      logical          :: bResult
      logical          :: bPassed
      bResult = .true.    ! We'll do "&amp;=" cumulative checking.
      bPassed = .false.   ! Assume the worst.
      write(*,*)repeat('=',79)
      bResult = matchw(tame, wild) ! Call a wildcard matching routine.
<br />
      ! To assist correctness checking, output the two strings in any failing scenarios.
      if (bExpectedResult .eqv. bResult) then
         bPassed = .true.
         if(nReps == 1) write(*,*)"Passed match on ",tame," vs. ", wild
      else
         if(nReps == 1) write(*,*)"Failed match on ",tame," vs. ", wild
      endif
<br />
   end function test
   end program demo_matchw
<br />
</pre>Expected output
      </blockquote><a name="5"></a>
    </div>
  </div>
</body>
