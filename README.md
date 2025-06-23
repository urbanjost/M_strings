[![string](docs/images/strings_small.gif)](https://urbanjost.github.io/M_strings/fpm-ford/index.html)
# [M_strings and associated files](https://urbanjost.github.io/M_strings/man3.html)

## Name
   M_strings and M_strings__oop - Fortran modules for processing strings

## Description
The `M_strings`(3fm) module is a collection of Fortran procedures that
supplement the built-in intrinsic string routines.  Routines for parsing,
tokenizing, changing case, substituting new strings for substrings,
locating strings with simple wildcard expressions, removing tabs and
line terminators as well as other string manipulations are included.

`M_strings_oop`(3fm) is a companion module that provides an OOP interface
to the `M_strings` module.

Note there are some procedures with overlapping function that were all
initially gathered here that have varying performance and robustness
that may be consolidated at some point.

## Synopsis

<table border="1">
<tr> <th>grouping</th> <th>page</th> <th>description</th> </tr>
<tr><td style="background:#d4eec6;">INTRO:OOPS</td><td><a href="https://urbanjost.github.io/M_strings/M_strings__oop.3m_strings__oop.html">M_strings__oop</a></td><td> OOP Fortran string module</td></tr>
<tr><td style="background:#cdefe2;">INTRO</td><td><a href="https://urbanjost.github.io/M_strings/M_strings.3m_strings.html">M_strings</a></td><td> Fortran string module</td></tr>
<tr><td style="background:#dddaeb;">ARRAY</td><td><a href="https://urbanjost.github.io/M_strings/bundle.3m_strings.html">bundle</a></td><td> return up to twenty strings of arbitrary length as an array (LICENSE:PD)</td></tr>
<tr><td style="background:#dddaeb;">ARRAY</td><td><a href="https://urbanjost.github.io/M_strings/c2s.3m_strings.html">c2s</a></td><td> convert C string pointer to Fortran character string (LICENSE:PD)</td></tr>
<tr><td style="background:#dddaeb;">ARRAY</td><td><a href="https://urbanjost.github.io/M_strings/s2c.3m_strings.html">s2c</a></td><td> convert character variable to array of characters with last element set to null (LICENSE:PD)</td></tr>
<tr><td style="background:#dddaeb;">ARRAY</td><td><a href="https://urbanjost.github.io/M_strings/switch.3m_strings.html">switch</a></td><td> converts between CHARACTER scalar and array of single characters (LICENSE:PD)</td></tr>
<tr><td style="background:#f6f0c0;">BASE</td><td><a href="https://urbanjost.github.io/M_strings/base.3m_strings.html">base</a></td><td> convert whole number string in base [2-36] to string in alternate base [2-36] (LICENSE:PD)</td></tr>
<tr><td style="background:#f6f0c0;">BASE</td><td><a href="https://urbanjost.github.io/M_strings/base2.3m_strings.html">base2</a></td><td> convert whole number to string in base 2 (LICENSE:PD)</td></tr>
<tr><td style="background:#f6f0c0;">BASE</td><td><a href="https://urbanjost.github.io/M_strings/codebase.3m_strings.html">codebase</a></td><td> convert whole number in base 10 to string in base [2-36] (LICENSE:PD)</td></tr>
<tr><td style="background:#f6f0c0;">BASE</td><td><a href="https://urbanjost.github.io/M_strings/decodebase.3m_strings.html">decodebase</a></td><td> convert whole number string in base [2-36] to base 10 number (LICENSE:PD)</td></tr>
<tr><td style="background:#c3dced;">CASE</td><td><a href="https://urbanjost.github.io/M_strings/lower.3m_strings.html">lower</a></td><td> changes a string to lowercase over specified range (LICENSE:PD)</td></tr>
<tr><td style="background:#c3dced;">CASE</td><td><a href="https://urbanjost.github.io/M_strings/lower_quoted.3m_strings.html">lower_quoted</a></td><td> elemental function converts string to lowercase skipping strings quoted per Fortran syntax rules (LICENSE:PD)</td></tr>
<tr><td style="background:#c3dced;">CASE</td><td><a href="https://urbanjost.github.io/M_strings/upper.3m_strings.html">upper</a></td><td> changes a string to uppercase (LICENSE:PD)</td></tr>
<tr><td style="background:#c3dced;">CASE</td><td><a href="https://urbanjost.github.io/M_strings/upper_quoted.3m_strings.html">upper_quoted</a></td><td> elemental function converts string to uppercase skipping strings quoted per Fortran syntax rules (LICENSE:PD)</td></tr>
<tr><td style="background:#e3f7d4;">COMPARE</td><td><a href="https://urbanjost.github.io/M_strings/ends_with.3m_strings.html">ends_with</a></td><td> test if string ends with specified suffix(es) (LICENSE:PD)</td></tr>
<tr><td style="background:#e3f7d4;">COMPARE</td><td><a href="https://urbanjost.github.io/M_strings/fortran_name.3m_strings.html">fortran_name</a></td><td> test if string meets criteria for being a fortran name (LICENSE:PD)</td></tr>
<tr><td style="background:#e3f7d4;">COMPARE</td><td><a href="https://urbanjost.github.io/M_strings/glob.3m_strings.html">glob</a></td><td> compare given string for match to a pattern which may contain globbing wildcard characters (LICENSE:PD)</td></tr>
<tr><td style="background:#e3f7d4;">COMPARE</td><td><a href="https://urbanjost.github.io/M_strings/isalnum.3m_strings.html">isalnum</a></td><td> test membership in subsets of ASCII set (LICENSE:PD)</td></tr>
<tr><td style="background:#e3f7d4;">COMPARE</td><td><a href="https://urbanjost.github.io/M_strings/isalpha.3m_strings.html">isalpha</a></td><td> returns .true. if character is a letter and .false. otherwise (LICENSE:PD)</td></tr>
<tr><td style="background:#e3f7d4;">COMPARE</td><td><a href="https://urbanjost.github.io/M_strings/isascii.3m_strings.html">isascii</a></td><td> returns .true. if the character is in the range char(0) to char(256) (LICENSE:PD)</td></tr>
<tr><td style="background:#e3f7d4;">COMPARE</td><td><a href="https://urbanjost.github.io/M_strings/isblank.3m_strings.html">isblank</a></td><td> returns .true. if character is a blank character (space or horizontal tab). (LICENSE:PD)</td></tr>
<tr><td style="background:#e3f7d4;">COMPARE</td><td><a href="https://urbanjost.github.io/M_strings/iscntrl.3m_strings.html">iscntrl</a></td><td> returns .true. if character is a delete character or ordinary control character (LICENSE:PD)</td></tr>
<tr><td style="background:#e3f7d4;">COMPARE</td><td><a href="https://urbanjost.github.io/M_strings/isdigit.3m_strings.html">isdigit</a></td><td> returns .true. if character is a digit (0, 1, ..., 9) and .false. otherwise (LICENSE:PD)</td></tr>
<tr><td style="background:#e3f7d4;">COMPARE</td><td><a href="https://urbanjost.github.io/M_strings/isgraph.3m_strings.html">isgraph</a></td><td> returns .true. if character is a printable character except a space is considered non-printable (LICENSE:PD)</td></tr>
<tr><td style="background:#e3f7d4;">COMPARE</td><td><a href="https://urbanjost.github.io/M_strings/islower.3m_strings.html">islower</a></td><td> returns .true. if character is a miniscule letter (a-z) (LICENSE:PD)</td></tr>
<tr><td style="background:#e3f7d4;">COMPARE</td><td><a href="https://urbanjost.github.io/M_strings/isprint.3m_strings.html">isprint</a></td><td> returns .true. if character is an ASCII printable character (LICENSE:PD)</td></tr>
<tr><td style="background:#e3f7d4;">COMPARE</td><td><a href="https://urbanjost.github.io/M_strings/ispunct.3m_strings.html">ispunct</a></td><td> returns .true. if character is a printable punctuation character (LICENSE:PD)</td></tr>
<tr><td style="background:#e3f7d4;">COMPARE</td><td><a href="https://urbanjost.github.io/M_strings/isspace.3m_strings.html">isspace</a></td><td> returns .true. if character is a null, space, tab, carriage return, new line, vertical tab, or formfeed (LICENSE:PD)</td></tr>
<tr><td style="background:#e3f7d4;">COMPARE</td><td><a href="https://urbanjost.github.io/M_strings/isupper.3m_strings.html">isupper</a></td><td> returns .true. if character is an uppercase letter (A-Z) (LICENSE:PD)</td></tr>
<tr><td style="background:#e3f7d4;">COMPARE</td><td><a href="https://urbanjost.github.io/M_strings/isxdigit.3m_strings.html">isxdigit</a></td><td> returns .true. if character is a hexadecimal digit (0-9, a-f, or A-F). (LICENSE:PD)</td></tr>
<tr><td style="background:#e3f7d4;">COMPARE</td><td><a href="https://urbanjost.github.io/M_strings/longest_common_substring.3m_strings.html">longest_common_substring</a></td><td> function that returns the longest common substring of two strings.</td></tr>
<tr><td style="background:#d5c8c6;">DESCRIBE</td><td><a href="https://urbanjost.github.io/M_strings/describe.3m_strings.html">describe</a></td><td> returns a string describing the name of a single character (LICENSE:PD)</td></tr>
<tr><td style="background:#d5c8c6;">DESCRIBE</td><td><a href="https://urbanjost.github.io/M_strings/edit_distance.3m_strings.html">edit_distance</a></td><td> returns a naive edit distance using the Levenshtein distance algorithm (LICENSE:PD)</td></tr>
<tr><td style="background:#f4c9df;">EDITING</td><td><a href="https://urbanjost.github.io/M_strings/change.3m_strings.html">change</a></td><td> change old string to new string with a directive like a line editor (LICENSE:PD)</td></tr>
<tr><td style="background:#f4c9df;">EDITING</td><td><a href="https://urbanjost.github.io/M_strings/join.3m_strings.html">join</a></td><td> append CHARACTER variable array into a single CHARACTER variable with specified separator (LICENSE:PD)</td></tr>
<tr><td style="background:#f4c9df;">EDITING</td><td><a href="https://urbanjost.github.io/M_strings/modif.3m_strings.html">modif</a></td><td> emulate the MODIFY command from the line editor XEDIT (LICENSE:PD)</td></tr>
<tr><td style="background:#f4c9df;">EDITING</td><td><a href="https://urbanjost.github.io/M_strings/replace.3m_strings.html">replace</a></td><td> function replaces one substring for another in string (LICENSE:PD)</td></tr>
<tr><td style="background:#f4c9df;">EDITING</td><td><a href="https://urbanjost.github.io/M_strings/reverse.3m_strings.html">reverse</a></td><td> Return a string reversed (LICENSE:PD)</td></tr>
<tr><td style="background:#f4c9df;">EDITING</td><td><a href="https://urbanjost.github.io/M_strings/squeeze.3m_strings.html">squeeze</a></td><td> delete adjacent duplicate occurrences of a character from a string (LICENSE:PD)</td></tr>
<tr><td style="background:#f4c9df;">EDITING</td><td><a href="https://urbanjost.github.io/M_strings/substitute.3m_strings.html">substitute</a></td><td> subroutine globally substitutes one substring for another in string (LICENSE:PD)</td></tr>
<tr><td style="background:#f4c9df;">EDITING</td><td><a href="https://urbanjost.github.io/M_strings/transliterate.3m_strings.html">transliterate</a></td><td> replace characters from old set with new set (LICENSE:PD)</td></tr>
<tr><td style="background:#e0c7f3;">ENCODE</td><td><a href="https://urbanjost.github.io/M_strings/decode_base64.3m_strings.html">decode_base64</a></td><td> decode data from base64 encoding as defined in RFC-4648 (LICENSE:MIT)</td></tr>
<tr><td style="background:#e0c7f3;">ENCODE</td><td><a href="https://urbanjost.github.io/M_strings/encode_base64.3m_strings.html">encode_base64</a></td><td> encode data using base64 encoding as defined in RFC-4648 (LICENSE:MIT)</td></tr>
<tr><td style="background:#e0c7f3;">ENCODE</td><td><a href="https://urbanjost.github.io/M_strings/percent_decode.3m_strings.html">percent_decode</a></td><td> percent-decode strings and character arrays (LICENSE:ISC)</td></tr>
<tr><td style="background:#e0c7f3;">ENCODE</td><td><a href="https://urbanjost.github.io/M_strings/percent_encode.3m_strings.html">percent_encode</a></td><td> percent-encode strings and character arrays (LICENSE:PD)</td></tr>
<tr><td style="background:#e0c7f3;">ENCODE</td><td><a href="https://urbanjost.github.io/M_strings/rotate13.3m_strings.html">rotate13</a></td><td> apply trivial ROT13 encryption to a string (LICENSE:PD)</td></tr>
<tr><td style="background:#cce5f6;">LENGTH</td><td><a href="https://urbanjost.github.io/M_strings/cpad.3m_strings.html">cpad</a></td><td> convert to a cropped string and then centers the string to specified length (LICENSE:PD)</td></tr>
<tr><td style="background:#cce5f6;">LENGTH</td><td><a href="https://urbanjost.github.io/M_strings/len_white.3m_strings.html">len_white</a></td><td> get length of string trimmed of whitespace. (LICENSE:PD)</td></tr>
<tr><td style="background:#cce5f6;">LENGTH</td><td><a href="https://urbanjost.github.io/M_strings/lenset.3m_strings.html">lenset</a></td><td> return string trimmed or padded to specified length (LICENSE:PD)</td></tr>
<tr><td style="background:#cce5f6;">LENGTH</td><td><a href="https://urbanjost.github.io/M_strings/lpad.3m_strings.html">lpad</a></td><td> convert to a cropped string and then blank-pad on the left to requested length (LICENSE:PD)</td></tr>
<tr><td style="background:#cce5f6;">LENGTH</td><td><a href="https://urbanjost.github.io/M_strings/merge_str.3m_strings.html">merge_str</a></td><td> pads strings to same length and then calls MERGE(3f) (LICENSE:PD)</td></tr>
<tr><td style="background:#cce5f6;">LENGTH</td><td><a href="https://urbanjost.github.io/M_strings/pad.3m_strings.html">pad</a></td><td> return string padded to at least specified length (LICENSE:PD)</td></tr>
<tr><td style="background:#cce5f6;">LENGTH</td><td><a href="https://urbanjost.github.io/M_strings/rpad.3m_strings.html">rpad</a></td><td> convert to a string and pad on the right to requested length (LICENSE:PD)</td></tr>
<tr><td style="background:#cce5f6;">LENGTH</td><td><a href="https://urbanjost.github.io/M_strings/stretch.3m_strings.html">stretch</a></td><td> return string padded to at least specified length (LICENSE:PD)</td></tr>
<tr><td style="background:#cce5f6;">LENGTH</td><td><a href="https://urbanjost.github.io/M_strings/zpad.3m_strings.html">zpad</a></td><td> pad a string on the left with zeros to specified length (LICENSE:PD)</td></tr>
<tr><td style="background:#e1fec7;">NONALPHA</td><td><a href="https://urbanjost.github.io/M_strings/dilate.3m_strings.html">dilate</a></td><td> function to expand tab characters (LICENSE:PD)</td></tr>
<tr><td style="background:#e1fec7;">NONALPHA</td><td><a href="https://urbanjost.github.io/M_strings/expand.3m_strings.html">expand</a></td><td> expand C-like escape sequences (LICENSE:PD)</td></tr>
<tr><td style="background:#e1fec7;">NONALPHA</td><td><a href="https://urbanjost.github.io/M_strings/noesc.3m_strings.html">noesc</a></td><td> convert non-printable characters to a space (LICENSE:PD)</td></tr>
<tr><td style="background:#e1fec7;">NONALPHA</td><td><a href="https://urbanjost.github.io/M_strings/notabs.3m_strings.html">notabs</a></td><td> expand tab characters (LICENSE:PD)</td></tr>
<tr><td style="background:#e1fec7;">NONALPHA</td><td><a href="https://urbanjost.github.io/M_strings/visible.3m_strings.html">visible</a></td><td> expand a string to control and meta-control representations (LICENSE:PD)</td></tr>
<tr><td style="background:#feeeee;">NUMERIC</td><td><a href="https://urbanjost.github.io/M_strings/listout.3m_strings.html">listout</a></td><td> expand a list of numbers where negative numbers denote range ends (1 -10 means 1 thru 10) (LICENSE:PD)</td></tr>
<tr><td style="background:#dcc0c1;">QUOTES</td><td><a href="https://urbanjost.github.io/M_strings/matching_delimiter.3m_strings.html">matching_delimiter</a></td><td> find position of matching delimiter (LICENSE:PD)</td></tr>
<tr><td style="background:#dcc0c1;">QUOTES</td><td><a href="https://urbanjost.github.io/M_strings/quote.3m_strings.html">quote</a></td><td> add quotes to string as if written with list-directed output (LICENSE:PD)</td></tr>
<tr><td style="background:#dcc0c1;">QUOTES</td><td><a href="https://urbanjost.github.io/M_strings/unquote.3m_strings.html">unquote</a></td><td> remove quotes from string as if read with list-directed input (LICENSE:PD)</td></tr>
<tr><td style="background:#fcc0eb;">TOKENS</td><td><a href="https://urbanjost.github.io/M_strings/chomp.3m_strings.html">chomp</a></td><td> Tokenize a string, consuming it one token per call (LICENSE:PD)</td></tr>
<tr><td style="background:#fcc0eb;">TOKENS</td><td><a href="https://urbanjost.github.io/M_strings/delim.3m_strings.html">delim</a></td><td> parse a string and store tokens into an array (LICENSE:PD)</td></tr>
<tr><td style="background:#fcc0eb;">TOKENS</td><td><a href="https://urbanjost.github.io/M_strings/find_field.3m_strings.html">find_field</a></td><td> parse a string into tokens (LICENSE:MIT)</td></tr>
<tr><td style="background:#fcc0eb;">TOKENS</td><td><a href="https://urbanjost.github.io/M_strings/paragraph.3m_strings.html">paragraph</a></td><td> break a long line into a paragraph (LICENSE:PD)</td></tr>
<tr><td style="background:#fcc0eb;">TOKENS</td><td><a href="https://urbanjost.github.io/M_strings/sep.3m_strings.html">sep</a></td><td> function to parse string into an array using specified delimiters (LICENSE:PD)</td></tr>
<tr><td style="background:#fcc0eb;">TOKENS</td><td><a href="https://urbanjost.github.io/M_strings/slice.3m_strings.html">slice</a></td><td> parse string into an array using specified delimiters (LICENSE:PD)</td></tr>
<tr><td style="background:#fcc0eb;">TOKENS</td><td><a href="https://urbanjost.github.io/M_strings/split.3m_strings.html">split</a></td><td> parse string into an array using specified delimiters (LICENSE:PD)</td></tr>
<tr><td style="background:#fcc0eb;">TOKENS</td><td><a href="https://urbanjost.github.io/M_strings/split2020.3m_strings.html">split2020</a></td><td> parse a string into tokens using proposed f2023 method (LICENSE:PD)</td></tr>
<tr><td style="background:#fcc0eb;">TOKENS</td><td><a href="https://urbanjost.github.io/M_strings/strtok.3m_strings.html">strtok</a></td><td> Tokenize a string (LICENSE:PD)</td></tr>
<tr><td style="background:#fcfbdc;">TYPE</td><td><a href="https://urbanjost.github.io/M_strings/atoi.3m_strings.html">atoi</a></td><td> function returns a 32-bit integer value from a string (LICENSE:PD)</td></tr>
<tr><td style="background:#fcfbdc;">TYPE</td><td><a href="https://urbanjost.github.io/M_strings/atol.3m_strings.html">atol</a></td><td> function returns a 64-bit integer value from a string (LICENSE:PD)</td></tr>
<tr><td style="background:#fcfbdc;">TYPE</td><td><a href="https://urbanjost.github.io/M_strings/aton.3m_strings.html">aton</a></td><td> function returns argument as a numeric value from a string (LICENSE:PD)</td></tr>
<tr><td style="background:#fcfbdc;">TYPE</td><td><a href="https://urbanjost.github.io/M_strings/dble.3m_strings.html">dble</a></td><td> overloads DBLE(3f) so it can handle character arguments (LICENSE:PD)</td></tr>
<tr><td style="background:#fcfbdc;">TYPE</td><td><a href="https://urbanjost.github.io/M_strings/fmt.3m_strings.html">fmt</a></td><td> convert any intrinsic to a string using specified format (LICENSE:PD)</td></tr>
<tr><td style="background:#fcfbdc;">TYPE</td><td><a href="https://urbanjost.github.io/M_strings/getvals.3m_strings.html">getvals</a></td><td> read arbitrary number of REAL values from a character variable up to size of VALUES() array (LICENSE:PD)</td></tr>
<tr><td style="background:#fcfbdc;">TYPE</td><td><a href="https://urbanjost.github.io/M_strings/int.3m_strings.html">int</a></td><td> overloads INT(3f) so it can handle character arguments (LICENSE:PD)</td></tr>
<tr><td style="background:#fcfbdc;">TYPE</td><td><a href="https://urbanjost.github.io/M_strings/isnumber.3m_strings.html">isnumber</a></td><td> determine if a string represents a number (LICENSE:PD)</td></tr>
<tr><td style="background:#fcfbdc;">TYPE</td><td><a href="https://urbanjost.github.io/M_strings/nint.3m_strings.html">nint</a></td><td> overloads NINT(3f) so it can handle character arguments (LICENSE:PD)</td></tr>
<tr><td style="background:#fcfbdc;">TYPE</td><td><a href="https://urbanjost.github.io/M_strings/real.3m_strings.html">real</a></td><td> overloads REAL(3f) so it can handle character arguments (LICENSE:PD)</td></tr>
<tr><td style="background:#fcfbdc;">TYPE</td><td><a href="https://urbanjost.github.io/M_strings/s2v.3m_strings.html">s2v</a></td><td> function returns doubleprecision numeric value from a string (LICENSE:PD)</td></tr>
<tr><td style="background:#fcfbdc;">TYPE</td><td><a href="https://urbanjost.github.io/M_strings/s2vs.3m_strings.html">s2vs</a></td><td> given a string representing numbers return a numeric array (LICENSE:PD)</td></tr>
<tr><td style="background:#fcfbdc;">TYPE</td><td><a href="https://urbanjost.github.io/M_strings/str.3m_strings.html">str</a></td><td> converts multiple values to a (CSV) string (LICENSE:PD)</td></tr>
<tr><td style="background:#fcfbdc;">TYPE</td><td><a href="https://urbanjost.github.io/M_strings/string_to_value.3m_strings.html">string_to_value</a></td><td> subroutine returns numeric value from string (LICENSE:PD)</td></tr>
<tr><td style="background:#fcfbdc;">TYPE</td><td><a href="https://urbanjost.github.io/M_strings/string_to_values.3m_strings.html">string_to_values</a></td><td> read a string representing numbers into a numeric array (LICENSE:PD)</td></tr>
<tr><td style="background:#fcfbdc;">TYPE</td><td><a href="https://urbanjost.github.io/M_strings/v2s.3m_strings.html">v2s</a></td><td> return numeric string from a numeric value (LICENSE:PD)</td></tr>
<tr><td style="background:#fcfbdc;">TYPE</td><td><a href="https://urbanjost.github.io/M_strings/value_to_string.3m_strings.html">value_to_string</a></td><td> return numeric string from a numeric value (LICENSE:PD)</td></tr>
<tr><td style="background:#e6d3f4;">WHITESPACE</td><td><a href="https://urbanjost.github.io/M_strings/adjustc.3m_strings.html">adjustc</a></td><td> center text (LICENSE:PD)</td></tr>
<tr><td style="background:#e6d3f4;">WHITESPACE</td><td><a href="https://urbanjost.github.io/M_strings/clip.3m_strings.html">clip</a></td><td> trim leading and trailing blanks or set of characters from a string (LICENSE:PD)</td></tr>
<tr><td style="background:#e6d3f4;">WHITESPACE</td><td><a href="https://urbanjost.github.io/M_strings/compact.3m_strings.html">compact</a></td><td> converts contiguous whitespace to a single character (or nothing) (LICENSE:PD)</td></tr>
<tr><td style="background:#e6d3f4;">WHITESPACE</td><td><a href="https://urbanjost.github.io/M_strings/crop.3m_strings.html">crop</a></td><td> trim leading and trailing blanks and control characters from a string (LICENSE:PD)</td></tr>
<tr><td style="background:#e6d3f4;">WHITESPACE</td><td><a href="https://urbanjost.github.io/M_strings/indent.3m_strings.html">indent</a></td><td> count number of leading spaces in a string (LICENSE:PD)</td></tr>
<tr><td style="background:#e6d3f4;">WHITESPACE</td><td><a href="https://urbanjost.github.io/M_strings/nospace.3m_strings.html">nospace</a></td><td> remove all whitespace from input string (LICENSE:PD)</td></tr>
</table>

## Intrinsics

The M_strings(3fm) module supplements and works in combination with
the Fortran built-in intrinsics. Standard Fortran lets you access the
characters in a string using ranges much like they are character arrays
assignment, comparisons with standard operators, supports dynamically
allocatable strings and supports concatenation using the // operator:

     adjustl             Left adjust a string
     adjustr             Right adjust a string
     index               Position of a substring within a string
     repeat              Repeated string concatenation
     scan                Scan a string for the presence of a set of characters
     trim                Remove trailing blank characters of a string
     verify              Scan a string for the absence of a set of characters
     len                 It returns the length of a character string
     achar               converts an integer into a character
     iachar              converts a character into an integer
     len_trim            finds length of string with trailing spaces ignored
     new_line            Newline character
     selected_char_kind  Choose character kind
     lge                 Lexical greater than or equal
     lgt                 Lexical greater than
     lle                 Lexical less than or equal
     llt                 Lexical less than

---
![gmake](docs/images/gnu.gif)
---

## Download and Build with make(1)
Just download the github repository, enter the src/ directory and run make:

     git clone https://github.com/urbanjost/M_strings.git
     cd M_strings/src
     # change Makefile if not using one of the listed compilers

     # for gfortran
     make clean
     make F90=gfortran gfortran

     # for ifort
     make clean
     make F90=ifort ifort

     # for nvfortran
     make clean
     make F90=nvfortran nvfortran

     # optionally
     make test # run the unit tests
     make run  # run all the demo programs from the man-pages
     make help # see other developer options

This will compile the M_strings(3f) module and optionally build all the
example programs from the document pages in the example/ sub-directory
and run the unit tests.

---
![fpm](docs/images/fpm_logo.gif)
---

## Download and Build with fpm(1)

Alternatively, download the github repository and build it with
fpm ( as described at [Fortran Package Manager](https://github.com/fortran-lang/fpm) )

```bash
     git clone https://github.com/urbanjost/M_strings.git
     cd M_strings
     fpm build
     fpm test  # run unit tests
```

or just list it as a dependency in your fpm.toml project file.

```toml
     [dependencies]
     M_strings        = { git = "https://github.com/urbanjost/M_strings.git" ,tag="v1.0.1"}
```

Note that M_strings.f90 is registered at the [fpm(1) registry](https://github.com/fortran-lang/fpm-registry)

---
![docs](docs/images/docs.gif)
---

## Documentation

### User

   There are descriptions of each procedures in the style of man-pages in three formats:

 - An [index](https://urbanjost.github.io/M_strings/man3.html) to the HTML versions
   of the man-pages.

 - A single page (that uses javascript) combining all the HTML descriptions of the man-pages
   for easy searching and printing:
   [BOOK_M_strings](https://urbanjost.github.io/M_strings/BOOK_M_strings.html).

 - ![man-pages](docs/images/manpages.gif) man-page archives for installation on GNU/Linux, Unix and CygWin platforms:
    + [manpages.zip](https://urbanjost.github.io/M_strings/manpages.zip)
    + [manpages.tgz](https://urbanjost.github.io/M_strings/manpages.tgz)
 - [CHANGELOG](docs/CHANGELOG.md) provides a history of significant changes

### Developer

 - The code was run through [ford(1)](https://politicalphysicist.github.io/ford-fortran-documentation.html)
   to produce a [developers' document](https://urbanjost.github.io/M_strings/fpm-ford/index.html).
 - [github action status](docs/STATUS.md)

---
![demos](docs/images/demo.gif)
---

## Demo Programs

Each man-page includes a working example program. These and additional
examples are included in the [example/](example/) directory.

## See Also
+ [M_match](https://github.com/urbanjost/M_match) Fortran module for Basic Regular Expressions (LICENSE:PD)
+ [M_regex](https://github.com/urbanjost/M_regex) Fortran interface to POSIX 1003.2 regular expression library using ISO_C_BINDING.
