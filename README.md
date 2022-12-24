![string](docs/images/strings_small.gif)
# M_strings.f90 and associated files

## NAME
   M_strings and M_strings_oops - Fortran modules for processing strings

## DESCRIPTION
The `M_strings`(3fm) module is a collection of Fortran procedures that
supplement the built-in intrinsic string routines.  Routines for parsing,
tokenizing, changing case, substituting new strings for substrings,
locating strings with simple wildcard expressions, removing tabs and
line terminators as well as other string manipulations are included.

`M_strings_oop`(3fm) is a companion module that provides an OOP interface
to the `M_strings` module.

## SYNOPSIS
public entities:

      use M_strings, only : [split](docs/split.3m_strings], [sep](docs/sep.3m_strings], [delim](docs/delim.3m_strings], [chomp](docs/chomp.3m_strings], [strtok](docs/strtok.3m_strings], 
      use M_strings, only : [split2020](docs/split2020.3m_strings], [find_field](docs/find_field.3m_strings], 
      use M_strings, only : [substitute](docs/substitute.3m_strings], [change](docs/change.3m_strings], [modif](docs/modif.3m_strings], [transliterate](docs/transliterate.3m_strings], [reverse](docs/reverse.3m_strings], [squeeze](docs/squeeze.3m_strings], 
      use M_strings, only : [replace](docs/replace.3m_strings], [join](docs/join.3m_strings], 
      use M_strings, only : [upper](docs/upper.3m_strings], [lower](docs/lower.3m_strings], [upper_quoted](docs/upper_quoted.3m_strings], 
      use M_strings, only : [rotate13](docs/rotate13.3m_strings], 
      use M_strings, only : [adjustc](docs/adjustc.3m_strings], [compact](docs/compact.3m_strings], [nospace](docs/nospace.3m_strings], [indent](docs/indent.3m_strings], 
      use M_strings, only : [crop](docs/crop.3m_strings], [clip](docs/clip.3m_strings], [unquote](docs/unquote.3m_strings], [quote](docs/quote.3m_strings], [matching_delimiter](docs/matching_delimiter.3m_strings], 
      use M_strings, only : [len_white](docs/len_white.3m_strings], [pad](docs/pad.3m_strings], [lpad](docs/lpad.3m_strings], [cpad](docs/cpad.3m_strings], [rpad](docs/rpad.3m_strings], [zpad](docs/zpad.3m_strings], [stretch](docs/stretch.3m_strings], [lenset](docs/lenset.3m_strings], [merge_str](docs/merge_str.3m_strings], 
      use M_strings, only : [switch](docs/switch.3m_strings], [s2c](docs/s2c.3m_strings], [c2s](docs/c2s.3m_strings], 
      use M_strings, only : [noesc](docs/noesc.3m_strings], [notabs](docs/notabs.3m_strings], [dilate](docs/dilate.3m_strings], [expand](docs/expand.3m_strings], [visible](docs/visible.3m_strings], 
      use M_strings, only : [longest_common_substring](docs/longest_common_substring.3m_strings], 
      use M_strings, only : [string_to_value](docs/string_to_value.3m_strings], [string_to_values](docs/string_to_values.3m_strings], [s2v](docs/s2v.3m_strings], [s2vs](docs/s2vs.3m_strings], 
      use M_strings, only : [value_to_string](docs/value_to_string.3m_strings], [v2s](docs/v2s.3m_strings], [msg](docs/msg.3m_strings], 
      use M_strings, only : [listout](docs/listout.3m_strings], [getvals](docs/getvals.3m_strings], 
      use M_strings, only : [glob](docs/glob.3m_strings], [ends_with](docs/ends_with.3m_strings], 
      use M_strings, only : [paragraph](docs/paragraph.3m_strings], 
      use M_strings, only : [base](docs/base.3m_strings], [decodebase](docs/decodebase.3m_strings], [codebase](docs/codebase.3m_strings], [base2](docs/base2.3m_strings], 
      use M_strings, only : [isalnum](docs/isalnum.3m_strings], [isalpha](docs/isalpha.3m_strings], [iscntrl](docs/iscntrl.3m_strings], [isdigit](docs/isdigit.3m_strings], 
      use M_strings, only : [isgraph](docs/isgraph.3m_strings], [islower](docs/islower.3m_strings], [isprint](docs/isprint.3m_strings], [ispunct](docs/ispunct.3m_strings], 
      use M_strings, only : [isspace](docs/isspace.3m_strings], [isupper](docs/isupper.3m_strings], [isascii](docs/isascii.3m_strings], [isblank](docs/isblank.3m_strings], [isxdigit](docs/isxdigit.3m_strings], 
      use M_strings, only : [isnumber](docs/isnumber.3m_strings], 
      use M_strings, only : [fortran_name](docs/fortran_name.3m_strings], 
      use M_strings, only : [describe](docs/describe.3m_strings], 
      use M_strings, only : [edit_distance](docs/edit_distance.3m_strings], 
      use M_strings, only : [cc](docs/cc.3m_strings], 
      use M_strings, only : [int](docs/int.3m_strings], [real](docs/real.3m_strings], [dble](docs/dble.3m_strings], [nint](docs/nint.3m_strings],

## INTRINSICS

The M_strings(3fm) module supplements and works in combination with
the Fortran built-in intrinsics. Standard Fortran lets you access the
characters in a string using ranges much like they are character arrays,
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

## DOWNLOAD and BUILD with make(1)
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

## DOWNLOAD AND BUILD WITH FPM(1)

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

## DOCUMENTATION

### USER

   In addition to a [markdown document](docs/HIGHLIGHTS.md)  with links to
   some of the most commonly used procedures, there are HTML documents for each
   subprogram in the style of man-pages:

 - An [index](https://urbanjost.github.io/M_strings/man3.html) to the HTML versions
   of the man-pages.

 - A single page (that uses javascript) combining all the HTML descriptions of the man-pages
   for easy searching and printing:
   [BOOK_M_strings](https://urbanjost.github.io/M_strings/BOOK_M_strings.html).

 - ![man-pages](docs/images/manpages.gif) man-page archives for use on GNU/Linux, Unix and CygWin platforms:
    + [manpages.zip](https://urbanjost.github.io/M_strings/manpages.zip)
    + [manpages.tgz](https://urbanjost.github.io/M_strings/manpages.tgz)
 - [CHANGELOG](docs/CHANGELOG.md) provides a history of significant changes

### DEVELOPER (__experimental__)

 - The code was run through [ford(1)](https://politicalphysicist.github.io/ford-fortran-documentation.html)
   to produce a [developers' document](https://urbanjost.github.io/M_strings/fpm-ford/index.html).
 - [github action status](docs/STATUS.md)

---
![demos](docs/images/demo.gif)
---

## DEMO PROGRAMS

Each man-page includes a working example program. These and additional
examples are included in the example/ directory.
