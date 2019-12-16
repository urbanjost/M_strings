<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c130">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>rotate13(3f)</b> - [M_strings] apply trivial ROT13 encryption to a string <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="7">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
<b>rotate13</b>(<i>input</i>) <b>result</b>(<i>output</i>)
<br />
    character(len=*),intent(in) :: input
    character(len=len(input))   :: output
<br />
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        ROT13 ("rotate by 13 places", sometimes hyphenated ROT-13) is a simple letter substitution cipher that replaces a letter with the 13th letter after
        it in the alphabet; wrapping around if necessary.
        <p>The transformation can be done using a lookup table, such as the following:</p>
        <pre>
      Input  ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz
      Output NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm
<br />
</pre>ROT13 is used in online forums as a means of hiding spoilers, punchlines, puzzle solutions, and offensive materials from the casual glance. ROT13 has
inspired a variety of letter and word games on-line, and is frequently mentioned in newsgroup conversations.
        <p>The algorithm provides virtually no cryptographic security, and is often cited as a canonical example of weak encryption.</p>
        <p>ROT13 is a special case of the Caesar cipher which was developed in ancient Rome.</p>
      </blockquote><a name=""></a>
      <h4><a name="">    ALGORITHM</a></h4>
      <blockquote>
        <p>Applying ROT13 to a piece of text merely requires examining its alphabetic characters and replacing each one by the letter 13 places further
        along in the alphabet, wrapping back to the beginning if necessary. A becomes N, B becomes O, and so on up to M, which becomes Z, then the sequence
        continues at the beginning of the alphabet: N becomes A, O becomes B, and so on to Z, which becomes M. Only those letters which occur in the English
        alphabet are affected; numbers, symbols, whitespace, and all other characters are left unchanged.</p>
      </blockquote><a name=""></a>
      <h4><a name="">    SAME ALGORITHM FOR ENCODING AND DECODING</a></h4>
      <blockquote>
        <p>Because there are 26 letters in the English alphabet and 26 = 2 x 13, the ROT13 function is its own inverse: so the same action can be used for
        encoding and decoding. In other words, two successive applications of ROT13 restore the original text (in mathematics, this is sometimes called an
        involution; in cryptography, a reciprocal cipher).</p>
      </blockquote><a name=""></a>
      <h4><a name="">    TRIVIAL SECURITY</a></h4>
      <blockquote>
        <p>the use of a constant shift means that the encryption effectively has no key, and decryption requires no more knowledge than the fact that ROT13
        is in use. Even without this knowledge, the algorithm is easily broken through frequency analysis.</p>
        <p>In encrypted normal English-language text of any significant size, ROT13 is recognizable from some letter/word patterns. The words "n", "V"
        (capitalized only), and "gur" (ROT13 for "a", "I", and "the"), and words ending in "yl" ("ly") are examples.</p>
      </blockquote><a name="3"></a>
      <h3><a name="3">REFERENCES</a></h3>
      <blockquote>
        Wikipedia, the free encyclopedia
      </blockquote><a name="4"></a>
      <h3><a name="4">EXAMPLE</a></h3>
      <blockquote>
        Sample program
        <pre>
   program demo_rotate13
   use M_strings, only : rotate13
   implicit none
   character(len=256) :: line
   integer            :: ios
   do
      read(*,'(a)',iostat=ios)line
      if(ios.ne.0)exit
      write(*,'(a)')rotate13(line)
   enddo
   end program demo_rotate13
<br />
</pre>
      </blockquote>Sample usage: demo_rotate13 United we stand, divided we fall. Havgrq jr fgnaq, qvivqrq jr snyy. <a name="5"></a>
    </div>
  </div>
</body>
