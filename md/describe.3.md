<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c35">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>describe(3f)</b> - [M_strings] returns a string describing the name of a single character <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="6">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>describe</b>(<i>ch</i>) result (<i>string</i>)
<br />
    character(len=1),intent(in)   :: ch
    character(len=:),allocatable  :: string
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <b>describe</b>(3f) returns a <i>string</i> describing long name of a single character
      </blockquote><a name="3"></a>
      <h3><a name="3">EXAMPLES</a></h3>
      <blockquote>
        Sample Program:
        <pre>
   program demo_describe
    use M_strings, only : describe
    implicit none
    integer :: i
       do i=1,128  ! fill variable with base ASCII character set
          write(*,*)describe(char(i-1))
       enddo
   end program demo_describe
<br />
</pre>Expected output
        <pre>
    ctrl-@ or ctrl-? (NUL) null
    ctrl-A (SOH) start of heading
    ctrl-B (STX) start of text
    ctrl-C (ETX) end of text
    ctrl-D (EOT) end of transmission
    ctrl-E (ENQ) enquiry
    ctrl-F (ACK) acknowledge
    ctrl-G (BEL) bell
    ctrl-H (BS) backspace
    ctrl-I (HT) horizontal tabulation
    ctrl-J (LF) line feed
    ctrl-K (VT) vertical tabulation
    ctrl-L (FF) form feed
    ctrl-M (CR) carriage return
    ctrl-N (SO) shift out
    ctrl-O (SI) shift in
    ctrl-P (DLE) data link escape
    ctrl-Q (DC1) device control 1
    ctrl-R (DC2) device control 2
    ctrl-S (DC3) device control 3
    ctrl-T (DC4) device control 4
    ctrl-U (NAK) negative acknowledge
    ctrl-V (SYN) synchronous idle
    ctrl-W (ETB) end of transmission block
    ctrl-X (CAN) cancel
    ctrl-Y (EM) end of medium
    ctrl-Z (SUB) substitute
    ctrl-[ (ESC) escape
    ctrl-\ or ctrl-@ (FS) file separator
    ctrl-] (GS) group separator
    ctrl-^ or ctrl-= (RS) record separator
    ctrl-_ (US) unit separator
    space
    ! exclamation point
    " quotation marks
    # number sign
    $ currency symbol
    % percent
    &amp; ampersand
    ' apostrophe
    ( left parenthesis
    ) right parenthesis
    * asterisk
    + plus
    , comma
    - minus
    . period
    / slash
    0 zero
    1 one
    2 two
    3 three
    4 four
    5 five
    6 six
    7 seven
    8 eight
    9 nine
    : colon
    ; semicolon
    &lt; less than
    = equals
    &gt; greater than
    ? question mark
    @ at sign
    majuscule A
    majuscule B
    majuscule C
    majuscule D
    majuscule E
    majuscule F
    majuscule G
    majuscule H
    majuscule I
    majuscule J
    majuscule K
    majuscule L
    majuscule M
    majuscule N
    majuscule O
    majuscule P
    majuscule Q
    majuscule R
    majuscule S
    majuscule T
    majuscule U
    majuscule V
    majuscule W
    majuscule X
    majuscule Y
    majuscule Z
    [ left bracket
    \ backslash
    ] right bracket
    ^ caret
    _ underscore
    ' grave accent
    miniscule a
    miniscule b
    miniscule c
    miniscule d
    miniscule e
    miniscule f
    miniscule g
    miniscule h
    miniscule i
    miniscule j
    miniscule k
    miniscule l
    miniscule m
    miniscule n
    miniscule o
    miniscule p
    miniscule q
    miniscule r
    miniscule s
    miniscule t
    miniscule u
    miniscule v
    miniscule w
    miniscule x
    miniscule y
    miniscule z
    { left brace
    | vertical line
    } right brace
    ~ tilde
    ctrl-? (DEL) delete
</pre>
      </blockquote><a name="4"></a>
    </div>
  </div>
</body>
