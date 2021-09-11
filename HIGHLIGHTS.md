[string](docs/images/alphabet.gif)
https://urbanjost.github.io/M_strings/fpm-ford/index.html).

These are some of the more commonly used procedures available in 
M_strings(3m):

<?
<blockquote>
<table cellpadding="3">

<tr><td colspan="3"><b>CASE</b></td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/lower.3.html">        lower        </a></td><td></td><td> changes a string to lowercase over specified range</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/upper.3.html">        upper        </a></td><td></td><td> changes a string to uppercase</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/upper_quoted.3.html"> upper_quoted </a></td><td></td><td> converts string to majuscule skipping strings quoted per Fortran syntax rules</td></tr>

<tr><td colspan="3"><b>COMPARE</b></td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/matchw.3.html">          matchw    </a></td><td></td><td> compare given string for match to pattern which may contain wildcard characters</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/isalnum.3.html">         isalnum , isalpha, isascii, isblank, iscntrl, isdigit, isgraph, islower, isprint, ispunct, isspace, isupper, isxdigit</a></td><td></td><td> test membership in subsets of ASCII set</td></tr>

<tr><td colspan="3"><b>EDITING</b></td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/join.3.html">    join                  </a></td><td></td><td> append CHARACTER variable array into a single CHARACTER variable with specified separator</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/change.3.html">          change        </a></td><td></td><td> change old string to new string with a directive like a line editor</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/modif.3.html">           modif         </a></td><td></td><td> emulate the MODIFY command from the line editor XEDIT</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/replace.3.html">         replace       </a></td><td></td><td> function globally replaces one substring for another in string</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/transliterate.3.html">   transliterate </a></td><td></td><td> replace characters from old set with new set</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/reverse.3.html">         reverse       </a></td><td></td><td> Return a string reversed</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/substitute.3.html">      substitute    </a></td><td></td><td> subroutine globally substitutes one substring for another in string</td></tr>

<tr><td colspan="3"><b>LENGTH</b></td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/len_white.3.html">       len_white     </a></td><td></td><td> get length of string trimmed of whitespace.</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/merge_str.3.html">       merge_str     </a></td><td></td><td> pads strings to same length and then calls MERGE(3f)</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/atleast.3.html">         atleast       </a></td><td></td><td> return string padded to at least specified length!!</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/lenset.3.html">          lenset        </a></td><td></td><td> return string trimmed or padded to specified length</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/stretch.3.html">         stretch       </a></td><td></td><td> return string padded to at least specified length</td></tr>

<tr><td colspan="3"><b>NONALPHA</b></td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/noesc.3.html">           noesc         </a></td><td></td><td> convert non-printable characters to a space.</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/expand.3.html">          expand        </a></td><td></td><td> expand C-like escape sequences</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/notabs.3.html">          notabs        </a></td><td></td><td> expand tab characters</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/visible.3.html">         visible       </a></td><td></td><td> expand a string to control and meta-control representations</td></tr>

<tr><td colspan="3"><b>NUMERIC</b></td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/isnumber.3.html">        isnumber  </a></td><td></td><td> determine if a string represents a number</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/listout.3.html">         listout   </a></td><td></td><td> expand a list of numbers where negative numbers denote range ends (1 -10 means 1 thru 10)</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/s2v.3.html">     s2v               </a></td><td></td><td> function returns doubleprecision numeric value from a string</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/s2vs.3.html">    s2vs              </a></td><td></td><td> given a string representing numbers return a numeric array</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/getvals.3.html">         getvals   </a></td><td></td><td> read arbitrary number of REAL values from a character variable up to size of VALUES() array</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/string_to_values.3.html"> string_to_values </a></td><td></td><td> read a string representing numbers into a numeric array</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/v2s.3.html">     v2s               </a></td><td></td><td> return numeric string from a numeric value</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/value_to_string.3.html"> value_to_string  </a></td><td></td><td> return numeric string from a numeric value</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/string_to_value.3.html"> string_to_value  </a></td><td></td><td> subroutine returns numeric value from string</td></tr>

<tr><td colspan="3"><b>BASE</b></td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/base.3.html">         base        </a></td><td></td><td> convert whole number string in base [2-36] to string in alternate base [2-36]</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/codebase.3.html">     codebase    </a></td><td></td><td> convert whole number in base 10 to string in base [2-36]</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/decodebase.3.html">   decodebase  </a></td><td></td><td> convert whole number string in base [2-36] to base 10 number</td></tr>

<tr><td colspan="3"><b>QUOTES</b></td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/quote.3.html">           quote            </a></td><td></td><td> add quotes to string as if written with list-directed input</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/unquote.3.html">         unquote          </a></td><td></td><td> remove quotes from string as if read with list-directed input</td></tr>

<tr><td colspan="3"><b>TOKENS</b></td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/delim.3.html">           delim            </a></td><td></td><td> parse a string and store tokens into an array</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/split.3.html">           split            </a></td><td></td><td> parse string into an array using specified delimiters</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/chomp.3.html">           chomp            </a></td><td></td><td> Tokenize a string, consuming it one token per call</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/fmt.3.html">     fmt              </a></td><td></td><td> Tokenize a string, consuming it one token per call</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/strtok.3.html">          strtok           </a></td><td></td><td> Tokenize a string</td></tr>

<tr><td colspan="3"><b>WHITESPACE</b></td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/adjustc.3.html">         adjustc          </a></td><td></td><td> center text</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/compact.3.html">         compact          </a></td><td></td><td> converts contiguous whitespace to a single character (or nothing)</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/indent.3.html">          indent           </a></td><td></td><td> count number of leading spaces in a string</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/nospace.3.html">         nospace          </a></td><td></td><td> remove all whitespace from input string</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/crop.3.html">    crop             </a></td><td></td><td> trim leading blanks and trailing blanks from a string</td></tr>

<tr><td colspan="3"><b>ARRAY and C</b></td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/c2s.3.html">     c2s         </a></td><td></td><td> convert C string pointer to Fortran character string</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/s2c.3.html">     s2c         </a></td><td></td><td> convert character variable to array of characters with last element set to null</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/switch.3.html">  switch      </a></td><td></td><td> converts between CHARACTER scalar and array of single characters</td></tr>

<tr><td colspan="3"><b>MISCELLANEOUS</b></td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/rotate13.3.html">        rotate13         </a></td><td></td><td> apply trivial ROT13 encryption to a string</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/msg.3.html">     msg              </a></td><td></td><td> converts any standard scalar type to a string</td></tr>
<tr><td><a href="https://urbanjost.github.io/M_strings/docs/describe.3.html">        describe         </a></td><td></td><td> returns a string describing the name of a single character</td></tr>
</table>
</body>