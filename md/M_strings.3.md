<?
<body>
  <a name="top" id="top"></a>

  <div id="Container">
    <div id="Content">
      <div class="c1">
      </div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>M_strings(3f)</b> - [M_strings:INTRO] Fortran string module
      </blockquote><a name="contents" id="contents"></a>

      <h3><a name="5">DESCRIPTION</a></h3>

      <blockquote>
        <p>The <b>M_strings</b>(3fm) module is a collection of Fortran procedures that supplement the built-in intrinsic string routines. Routines for
        parsing, tokenizing, changing case, substituting new strings for substrings, locating strings with simple wildcard expressions, removing tabs and
        line terminators and other string manipulations are included.</p>

        <p><b>M_strings_oop</b>(3fm) is a companion module that provides an OOP interface to the M_strings module.</p>

      </blockquote><a name="2"></a>

      <h3><a name="2">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
<b>public</b> entities:
<br />   use M_strings, only : split,delim,chomp
   use M_strings, only : substitute,change,modif,transliterate,reverse,replace,join
   use M_strings, only : upper,lower,upper_quoted
   use M_strings, only : rotate13
   use M_strings, only : adjustc,compact,nospace,indent,crop,unquote,quote
   use M_strings, only : len_white,atleast,stretch,lenset,merge_str
   use M_strings, only : switch,s2c,c2s
   use M_strings, only : noesc,notabs,expand,visible
   use M_strings, only : string_to_value,string_to_values,s2v,s2vs,value_to_string,v2s,msg
   use M_strings, only : listout,getvals
   use M_strings, only : matchw
   use M_strings, only : fmt
   use M_strings, only : base, decodebase, codebase
   use M_strings, only : isalnum, isalpha, iscntrl, isdigit, isgraph, islower,
                         isprint, ispunct, isspace, isupper, isascii, isblank, isxdigit
<br />
</pre>
      </blockquote><a name=""></a>

      <h4><a name="">TOKENS</a></h4>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">split</td>

            <td valign="bottom">subroutine parses string using specified delimiter characters and stores tokens into an array</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">delim</td>

            <td valign="bottom">subroutine parses string using specified delimiter characters and store tokens into an array</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">chomp</td>

            <td valign="bottom">function consumes input line as it returns next token in a string using specified delimiters</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">fmt</td>

            <td valign="bottom">convert a string into a paragraph</td>
          </tr>

        </table>
      </blockquote><a name=""></a>

      <h4><a name="">EDITING</a></h4>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c2" colspan="1">substitute</td>
            <td>subroutine non-recursively globally replaces old substring with new substring</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">replace</td>
            <td>function non-recursively globally replaces old substring with new substring using allocatable string (version of <b>substitute</b>(3f)
            without limitation on length of output string)</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">change</td>

            <td valign="bottom">subroutine non-recursively globally replaces old substring with new substring with a directive like line editor</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">modif</td>

            <td valign="bottom">subroutine modifies a string with a directive like the XEDIT line editor MODIFY command</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">transliterate</td>
            <td>replace characters found in set one with characters from set two</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">reverse</td>
            <td>reverse character order in a string</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">join</td>

            <td valign="bottom">join an array of CHARACTER variables with specified separator</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">rotate13</td>
            <td>apply trivial encryption algorithm ROT13 to a string</td>
          </tr>

        </table>
      </blockquote><a name=""></a>

      <h4><a name="">CASE</a></h4>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">upper</td>

            <td valign="bottom">function converts string to uppercase</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">lower</td>

            <td valign="bottom">function converts string to miniscule</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">upper</td>

            <td valign="bottom">function converts string to uppercase skipping strings quoted per Fortran rules</td>
          </tr>

        </table>
      </blockquote><a name=""></a>

      <h4><a name="">WHITE SPACE</a></h4>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c2" colspan="1">adjustc</td>
            <td>elemental function centers text within the length of the input string</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">compact</td>
            <td>left justify string and replace duplicate whitespace with single characters or nothing</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">nospace</td>
            <td>function replaces whitespace with nothing</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">indent</td>

            <td valign="bottom">find number of leading spaces</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">crop</td>

            <td valign="bottom">function trims leading and trailing spaces</td>
          </tr>

        </table>
      </blockquote><a name=""></a>

      <h4><a name="">QUOTES</a></h4>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c2" colspan="1">unquote</td>
            <td>remove quotes from string as if read with list-directed input</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">quote</td>

            <td valign="bottom">add quotes to string as if written with list-directed input</td>
          </tr>

        </table>
      </blockquote><a name=""></a>

      <h4><a name="">STRING LENGTH</a></h4>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c2" colspan="1">len_white</td>
            <td>find location of last non-whitespace character</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">lenset</td>

            <td valign="bottom">return a string of specified length</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">atleast</td>
            <td>return a string of at least specified length</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">stretch</td>
            <td>return a string of at least specified length with suffix</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">merge_str</td>
            <td>make strings of equal length and then call <b>MERGE</b>(3f) intrinsic</td>
          </tr>

        </table>
      </blockquote><a name=""></a>

      <h4><a name="">CHARACTER ARRAY VERSUS STRING</a></h4>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">switch</td>

            <td valign="bottom">switch between a string and an array of single characters</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">s2c</td>

            <td valign="bottom">convert string to array of single characters and add null terminator for passing to C</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">c2s</td>

            <td valign="bottom">convert null-terminated array of single characters to string for converting strings returned from C</td>
          </tr>

        </table>
      </blockquote><a name=""></a>

      <h4><a name="">NONALPHA</a></h4>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">noesc</td>

            <td valign="bottom">convert non-printable ASCII8 characters to a space</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">notabs</td>

            <td valign="bottom">convert tabs to spaces while maintaining columns, assuming tabs are set every 8 characters</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">expand</td>

            <td valign="bottom">expand escape sequences in a string</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">visible</td>
            <td>expand escape sequences in a string to control and meta-control representations</td>
          </tr>

        </table>
      </blockquote><a name=""></a>

      <h4><a name="">NUMERIC STRINGS</a></h4>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c2" colspan="1">string_to_value</td>
            <td>generic subroutine returns numeric value (REAL, DOUBLEPRECISION, INTEGER) from string</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">string_to_values</td>
            <td>subroutine reads an array of numbers from a string</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">getvals</td>
            <td>subroutine reads a relatively arbitrary number of values from a string using list-directed read</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">s2v</td>

            <td valign="bottom">function returns DOUBLEPRECISION numeric value from string</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">s2vs</td>

            <td valign="bottom">function returns a DOUBLEPRECISION array of numbers from a string</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">msg</td>

            <td valign="bottom">append the values of up to nine values into a string</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">value_to_string</td>
            <td>generic subroutine returns string given numeric value (REAL, DOUBLEPRECISION, INTEGER, LOGICAL )</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">v2s</td>

            <td valign="bottom">generic function returns string from numeric value (REAL, DOUBLEPRECISION, INTEGER )</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">trimzeros</td>
            <td>delete trailing zeros from numeric decimal string</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">listout</td>
            <td>expand a list of numbers where negative numbers denote range ends (1 <b>-10</b> means 1 thru 10)</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">isnumber</td>
            <td>determine if string represents a number</td>
          </tr>

        </table>
      </blockquote><a name=""></a>

      <h4><a name="">CHARACTER TESTS</a></h4>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">matchw</td>

            <td valign="bottom">compares given string for match to pattern which may contain wildcard characters</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">isalnum</td>
            <td>returns .true. if character is a letter or digit</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">isalpha</td>
            <td>returns .true. if character is a letter and .false. otherwise</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">iscntrl</td>
            <td>returns .true. if character is a delete character or ordinary control character</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">isdigit</td>
            <td>returns .true. if character is a digit (0,1,...,9) and .false. otherwise</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">isgraph</td>
            <td>returns .true. if character is a printable character except a space is considered non-printable</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">islower</td>
            <td>returns .true. if character is a miniscule letter (a-z)</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">isprint</td>
            <td>returns .true. if character is an ASCII printable character</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">ispunct</td>
            <td>returns .true. if character is a printable punctuation character</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">isspace</td>
            <td>returns .true. if character is a null, space, tab, carriage return, new line, vertical tab, or formfeed</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">isupper</td>
            <td>returns .true. if character is an uppercase letter (A-Z)</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">isascii</td>
            <td>returns .true. if the character is in the range <b>char</b>(0) to <b>char</b>(127)</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">isblank</td>
            <td>returns .true. if character is a blank character (space or horizontal tab.</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">isxdigit</td>
            <td>returns .true. if character is a hexadecimal digit (0-9, a-f, or A-F).</td>
          </tr>

        </table>
      </blockquote><a name=""></a>

      <h4><a name="">BASE CONVERSION</a></h4>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">base</td>

            <td valign="bottom">convert whole number string in base [2-36] to string in alternate base [2-36]</td>
          </tr>

          <tr valign="top">
            <td class="c2" colspan="1">codebase</td>
            <td>convert whole number string in base [2-36] to base 10 number decodebase convert whole number in base 10 to string in base [2-36]</td>
          </tr>

        </table>
      </blockquote><a name=""></a>

      <h4><a name="">MISCELLANEOUS</a></h4>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c2" colspan="1">describe</td>
            <td>returns a string describing the name of a single character</td>
          </tr>

        </table>
      </blockquote>

      <p><a name=""></a></p>

      <h4><a name="">INTRINSICS</a></h4>

      <blockquote>
        <p>The <b>M_strings</b>(3fm) module supplements and works in combination with the Fortran built-in intrinsics. Stand-alone Fortran lets you access
        the characters in a string using ranges much like they are character arrays, assignment, comparisons with standard operators, supports dynamically
        allocatable strings and supports concatenation using the // operator, as well as a number of intrinsic string routines:</p>
        <pre>
       adjustl   Left adjust a string
       adjustr   Right adjust a string
       index     Position of a substring within a string
       repeat    Repeated string concatenation
       scan      Scan a string for the presence of a set of characters
       trim      Remove trailing blank characters of a string
       verify    Scan a string for the absence of a set of characters
       len       It returns the length of a character string
       achar     converts an integer into a character
       iachar    converts a character into an integer
       len_trim  finds length of string with trailing spaces ignored
       new_line  Newline character
       selected_char_kind  Choose character kind
       lge       Lexical greater than or equal
       lgt       Lexical greater than
       lle       Lexical less than or equal
       llt       Lexical less than
<br /><br /><br />
</pre>
      </blockquote><a name=""></a>

      <h4><a name="">OOPS INTERFACE</a></h4>

      <blockquote>
        <p>The <b>M_strings_oop</b>(3fm) module (included with the <b>M_strings</b>(3fm) module) provides an OOP (Object-Oriented Programming) interface to
        the <b>M_strings</b>(3fm) module; as described in the example program OBJECT_ORIENTED shown below...</p>
      </blockquote><a name="3"></a>

      <h3><a name="3">SEE ALSO</a></h3>

      <blockquote>
        <p>There are additional routines in other GPF modules for working with expressions (M_calculator), time strings (M_time), random strings (M_random,
        M_uuid), lists (M_list), and interfacing with the C regular expression library (M_regex).</p>
      </blockquote><a name="4"></a>

      <h3><a name="4">EXAMPLES</a></h3>

      <blockquote>
        <p>Each of the procedural functions includes an example program in the corresponding <b>man</b>(1) page for the function. The object-oriented
        interface does not have individual <b>man</b>(1) pages, but is instead demonstrated using the following example program:</p>
        <pre>
 program demo_M_strings
 !
 ! This is an example using the object-oriented class/type model 
 ! defined in M_strings_oop
 ! This is essentially the same functionality as the procedures combined with 
 ! several Fortran intrinsics and overloaded operators
 !
 use M_strings_oop,only : string, p
 implicit none
 TYPE(string) :: str1
 TYPE(string) :: str2
 TYPE(string) :: str3
 !==============================================================================
   write(*,*)'exercise the M_STRING_OOP module interface'
   ! draw a break line in the output
   write(*,*)repeat('=',78)
   write(*,*)'Call methods of type(STRING)'
   ! define TYPE(STRING) with constructor
   str2=string('   This  is  a  String!       ')
   write(*,*)repeat('=',78)
   ! print members of type
   write(*,101)'str2%str is ................ ',str2%str
   ! same as intrinsic LEN()
   write(*,202)'len ........................ ',str2%len()
   ! same as intrinsic INDEX()
   write(*,202)'len_trim ................... ',str2%len_trim()
   ! same as intrinsic INDEX()
   write(*,202)'index("is")................. ',str2%index("is")
   ! same as intrinsic INDEX()
   write(*,202)'index("is",back=.T.) ....... ',str2%index("is",back=.TRUE.)
   ! output TYPE(STRING) with %str all uppercase
   write(*,101)'upper ...................... ',p(str2%upper())
   ! output TYPE(STRING) with %str all miniscule
   write(*,101)'lower ...................... ',p(str2%lower())
   ! output TYPE(STRING) with %str reversed
   write(*,101)'reverse .................... ',p(str2%reverse())
   ! same as intrinsic ADJUSTL()
   write(*,101)'adjustl .................... ',p(str2%adjustl())
   ! same as intrinsic ADJUSTR()
   write(*,101)'adjustr .................... ',p(str2%adjustr())
   ! center string in current string length
   write(*,101)'adjustc .................... ',p(str2%adjustc())
   ! center string in string length of NN
   write(*,101)'adjustc(49) ................ ',p(str2%adjustc(49))
   ! force %str to be NN characters long
   write(*,101)'lenset(49) ................. ',p(str2%lenset(49))
   ! same as intrinsic TRIM()
   write(*,101)'trim ....................... ',p(str2%trim())
   ! trim leading and trailing spaces
   write(*,101)'crop ....................... ',p(str2%crop())
   ! calls M_strings procedure SUBSTITUTE()
   write(*,101)'substitute("This","Here") .. ',p(str2%substitute("This","Here"))
   ! calls M_strings procedure COMPACT()
   write(*,101)'compact .................... ',p(str2%compact())
   write(*,101)'compact("") ................ ',p(str2%compact(""))
   write(*,101)'compact(":") ............... ',p(str2%compact(":"))
   ! calls M_strings procedure TRANSLITERATE()
   write(*,101)'transliterate("aei","VWX") . ',p(str2%transliterate("aei","VWX"))
   write(*,101)'transliterate("aeiou"," ") . ',p(str2%transliterate("aeiou"," "))
   write(*,101)'transliterate("aeiou","") .. ',p(str2%transliterate("aeiou",""))
   write(*,101)'transliterate(" aeiou","") . ',p(str2%transliterate(" aeiou",""))
   ! calls M_strings procedure SWITCH()
   write(*,404)'chars .................... . ',str2%chars()
<br />   write(*,*)repeat('=',78)
   str2%str='\t\tSome tabs\t   x\bX '
   write(*,101)'str2%str ................... ',str2%str
   write(*,101)'expand ..................... ',p(str2%expand())
   str2=str2%expand()
   ! calls M_strings procedure NOTABS()
   write(*,101)'notabs ..................... ',p(str2%notabs())
   ! calls M_strings procedure NOESC()
   write(*,101)'noesc ...................... ',p(str2%noesc())
<br />   write(*,*)repeat('=',78)
   write(*,*)'Casting to numeric variables'
   str3=string('   12.345678901234567e1        ')
   write(*,101)'str3%str ................... ',str3%str
   ! calls M_strings procedure STRING_TO_VALUE()
   write(*,*)'int  ....................... ', str3%int()
   ! calls M_strings procedure STRING_TO_VALUE()
   write(*,*)'real ....................... ', str3%real()
   ! calls M_strings procedure STRING_TO_VALUE()
   write(*,*)'dble ....................... ', str3%dble()
<br />   write(*,*)repeat('=',78)
   write(*,*)'Matching simple globbing patterns'
   str3=string('   12.345678901234567e1        ')
   str3=string('Four score and seven years ago')
   write(*,101)'str3%str ................... ',str3%str
   ! calls M_strings procedure MATCHW
   write(*,*)'match("Fo*") ............... ', str3%match("Fo*")
   ! calls M_strings procedure MATCHW
   write(*,*)'match("and") ............... ', str3%match("and")
   ! calls M_strings procedure MATCHW
   write(*,*)'match("*and*") ............. ', str3%match("*and*")
<br />   101 format(1x,a,"[",a,"]")
   202 format(1x,a,i0)
   303 format(1x,*(l3))
   404 format(1x,a,*("[",a1,"]":))
<br />   write(*,*)repeat('=',78)
   write(*,*)'OVERLOADED OPERATORS (add and subtract,return TYPE(STRING))'
   str1%str='123.456'
   str2%str='AaBbCcDdEeFfGgHhIiJj AaBbCcDdEeFfGgHhIiJj'
   write(*,101)'str1%str ................... ',str1%str
   write(*,101)'str2%str ................... ',str2%str
   write(*,*)'str1 + str2 ................ ',p(str1 + str2)
   ! a string that looks like a numeric value can have a value added
   write(*,*)'str1 + 20000 ............... ',p(str1 +20000)
   write(*,*)'str1 - 20.0 ................ ',p(str1 -20.0)
   write(*,*)'str2 - "Aa" (removes ALL) .. ',p(str2 - 'Aa')
<br />   write(*,*)repeat('=',78)
   write(*,*)'OVERLOADED OPERATORS (multiply,return TYPE(STRING))'
   str1%str='AaBbCcDdEeFfGgHhIiJj'
   write(*,101)'str1%str ................... ',str1%str
   write(*,*)'str1 * 3 ................... ',p(str1 * 3)
<br />   write(*,*)repeat('=',78)
   write(*,*)'OVERLOADED OPERATORS (//,return TYPE(STRING))'
   str1%str='String one:'
   str2%str='String two:'
   write(*,101)'str1%str ................... ',str1%str
   write(*,101)'str2%str ................... ',str2%str
   write(*,*)'str1 // str2 ................ ',p(str1 // str2)
   ! numeric values are converted to strings
   write(*,*)'str1 // 20000 ............... ',p(str1 // 20000)
   write(*,*)'str1 // 20.0 ................ ',p(str1 // 20.0)
<br />   write(*,*)repeat('=',78)
   write(*,*)'OVERLOADED OPERATORS (logical comparisons,return logical)'
   ! NOTE: comparisons are performed on the character variable members
   !       of the type(string)
   str1%str='abcdefghij'
   str2%str='klmnopqrst'
   write(*,101)'str1%str ................... ',str1%str
   write(*,101)'str2%str ................... ',str2%str
   write(*,*)': EQ LT GT LE GE NE'
   write(*,*)'compare str1 to str1'
   write(*,303)str1.eq.str1  ,str1.lt.str1  ,str1.gt.str1  ,str1.le.str1 &amp;
              &amp; ,str1.ge.str1  ,str1.ne.str1
   write(*,*)'compare str1 to str2'
   write(*,303)str1.eq.str2  ,str1.lt.str2  ,str1.gt.str2  ,str1.le.str2 &amp;
              &amp; ,str1.ge.str2  ,str1.ne.str2
   write(*,*)'compare str2 to str1'
   write(*,303)str2.eq.str1  ,str2.lt.str1  ,str2.gt.str1  ,str2.le.str1 &amp;
              &amp; ,str2.ge.str1  ,str2.ne.str1
<br />   write(*,*)repeat('=',78)
<br /> end program demo_M_strings
<br /> Expected output
<br />  exercise the M_STRING_OOP module interface
  =============================================================================
  Call methods of type(STRING)
  =============================================================================
  str2%str is ................ [   This  is  a  String!             ]
  len ........................ 36
  len_trim ................... 23
  index("is")................. 6
  index("is",back=.T.) ....... 10
  upper ...................... [   THIS  IS  A  STRING!             ]
  lower ...................... [   this  is  a  string!             ]
  reverse .................... [             !gnirtS  a  si  sihT   ]
  adjustl .................... [This  is  a  String!                ]
  adjustr .................... [                This  is  a  String!]
  adjustc .................... [        This  is  a  String!        ]
  adjustc(49) ................ [              This  is  a  String!               ]
  lenset(49) ................. [   This  is  a  String!                          ]
  trim ....................... [   This  is  a  String!]
  crop ....................... [This  is  a  String!]
  substitute("This","Here") .. [   Here  is  a  String!             ]
  compact .................... [This is a String!]
  compact("") ................ [ThisisaString!]
  compact(":") ............... [This:is:a:String!]
  transliterate("aei","VWX") . [   ThXs  Xs  V  StrXng!             ]
  transliterate("aeiou"," ") . [   Th s   s     Str ng!             ]
  transliterate("aeiou","") .. [   Ths  s    Strng!                 ]
  transliterate(" aeiou","") . [ThssStrng!                          ]
  chars .................... . [ ][ ][ ][T][h][i][s][ ][ ][i][s][ ][ ][a][ ][ ][S][t][r][i][n][g][!]
  [ ][ ][ ][ ][ ][ ][ ]
  =============================================================================
  str2%str ................... [\t\tSome tabs\t   x\bX ]
  expand ..................... [         Some tabs          x   X]
  notabs ..................... [                Some tabs          x    X]
  noesc ...................... [  Some tabs    x X]
  =============================================================================
  Casting to numeric variables
  str3%str ................... [   12.345678901234567e1        ]
  int  .......................          123
  real .......................    123.456787
  dble .......................    123.45678901234567
  =============================================================================
  Matching simple globbing patterns
  str3%str ................... [Four score and seven years ago]
  match("Fo*") ...............  T
  match("and") ...............  F
  match("*and*") .............  T
  ==============================================================================
  OVERLOADED OPERATORS (add and subtract, return TYPE(STRING))
  str1%str ................... [123.456]
  str2%str ................... [AaBbCcDdEeFfGgHhIiJj AaBbCcDdEeFfGgHhIiJj]
  str1 + str2 ................ 123.456 AaBbCcDdEeFfGgHhIiJj AaBbCcDdEeFfGgHhIiJj
  str1 + 20000 ............... 20123.455999999998
  str1 - 20.0 ................ -103.456
  str2 - "Aa" (removes ALL) .. BbCcDdEeFfGgHhIiJj BbCcDdEeFfGgHhIiJj
  =============================================================================
  OVERLOADED OPERATORS (multiply, return TYPE(STRING))
  str1%str ................... [AaBbCcDdEeFfGgHhIiJj]
  str1 * 3 ................... AaBbCcDdEeFfGgHhIiJjAaBbCcDdEeFfGgHhIiJjAaBbCcDdEeFfGgHhIiJj
  =============================================================================
  OVERLOADED OPERATORS (//, return TYPE(STRING))
  str1%str ................... [String one:]
  str2%str ................... [String two:]
  str1 // str2 ................ String one:String two:
  str1 // 20000 ............... String one:20000
  str1 // 20.0 ................ String one:20.0
  =============================================================================
  OVERLOADED OPERATORS (logical comparisons, return logical)
  str1%str ................... [abcdefghij]
  str2%str ................... [klmnopqrst]
  : EQ LT GT LE GE NE
  compare str1 to str1
  :  T  F  F  T  T  F
  compare str1 to str2
  :  F  T  F  T  F  T
  compare str2 to str1
  :  F  F  T  F  T  T
  =============================================================================
</pre>
      </blockquote>
    </div>
  </div>
</body>
