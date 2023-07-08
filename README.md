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
public entities:

   use M_strings, only : [split](https://urbanjost.github.io/M_strings/split.3m_strings), [sep](https://urbanjost.github.io/M_strings/sep.3m_strings), [delim](https://urbanjost.github.io/M_strings/delim.3m_strings), [chomp](https://urbanjost.github.io/M_strings/chomp.3m_strings), [strtok](https://urbanjost.github.io/M_strings/strtok.3m_strings)             
   use M_strings, only : [split2020](https://urbanjost.github.io/M_strings/split2020.3m_strings), [find_field](https://urbanjost.github.io/M_strings/find_field.3m_strings)             
   use M_strings, only : [substitute](https://urbanjost.github.io/M_strings/substitute.3m_strings), [change](https://urbanjost.github.io/M_strings/change.3m_strings), [modif](https://urbanjost.github.io/M_strings/modif.3m_strings), [transliterate](https://urbanjost.github.io/M_strings/transliterate.3m_strings), [reverse](https://urbanjost.github.io/M_strings/reverse.3m_strings), [squeeze](https://urbanjost.github.io/M_strings/squeeze.3m_strings)             
   use M_strings, only : [replace](https://urbanjost.github.io/M_strings/replace.3m_strings), [join](https://urbanjost.github.io/M_strings/join.3m_strings)             
   use M_strings, only : [upper](https://urbanjost.github.io/M_strings/upper.3m_strings), [lower](https://urbanjost.github.io/M_strings/lower.3m_strings), [upper_quoted](https://urbanjost.github.io/M_strings/upper_quoted.3m_strings)             
   use M_strings, only : [rotate13](https://urbanjost.github.io/M_strings/rotate13.3m_strings), [percent_encode](https://urbanjost.github.io/M_strings/percent_encode.3m_strings)             
   use M_strings, only : [adjustc](https://urbanjost.github.io/M_strings/adjustc.3m_strings), [compact](https://urbanjost.github.io/M_strings/compact.3m_strings), [nospace](https://urbanjost.github.io/M_strings/nospace.3m_strings), [indent](https://urbanjost.github.io/M_strings/indent.3m_strings)             
   use M_strings, only : [crop](https://urbanjost.github.io/M_strings/crop.3m_strings), [clip](https://urbanjost.github.io/M_strings/clip.3m_strings), [unquote](https://urbanjost.github.io/M_strings/unquote.3m_strings), [quote](https://urbanjost.github.io/M_strings/quote.3m_strings), [matching_delimiter](https://urbanjost.github.io/M_strings/matching_delimiter.3m_strings)             
   use M_strings, only : [len_white](https://urbanjost.github.io/M_strings/len_white.3m_strings), [pad](https://urbanjost.github.io/M_strings/pad.3m_strings), [lpad](https://urbanjost.github.io/M_strings/lpad.3m_strings), [cpad](https://urbanjost.github.io/M_strings/cpad.3m_strings), [rpad](https://urbanjost.github.io/M_strings/rpad.3m_strings), [zpad](https://urbanjost.github.io/M_strings/zpad.3m_strings), [stretch](https://urbanjost.github.io/M_strings/stretch.3m_strings), [lenset](https://urbanjost.github.io/M_strings/lenset.3m_strings), [merge_str](https://urbanjost.github.io/M_strings/merge_str.3m_strings)             
   use M_strings, only : [switch](https://urbanjost.github.io/M_strings/switch.3m_strings), [s2c](https://urbanjost.github.io/M_strings/s2c.3m_strings), [c2s](https://urbanjost.github.io/M_strings/c2s.3m_strings)             
   use M_strings, only : [noesc](https://urbanjost.github.io/M_strings/noesc.3m_strings), [notabs](https://urbanjost.github.io/M_strings/notabs.3m_strings), [dilate](https://urbanjost.github.io/M_strings/dilate.3m_strings), [expand](https://urbanjost.github.io/M_strings/expand.3m_strings), [visible](https://urbanjost.github.io/M_strings/visible.3m_strings)             
   use M_strings, only : [longest_common_substring](https://urbanjost.github.io/M_strings/longest_common_substring.3m_strings)             
   use M_strings, only : [string_to_value](https://urbanjost.github.io/M_strings/string_to_value.3m_strings), [string_to_values](https://urbanjost.github.io/M_strings/string_to_values.3m_strings), [s2v](https://urbanjost.github.io/M_strings/s2v.3m_strings), [s2vs](https://urbanjost.github.io/M_strings/s2vs.3m_strings)             
   use M_strings, only : [value_to_string](https://urbanjost.github.io/M_strings/value_to_string.3m_strings), [v2s](https://urbanjost.github.io/M_strings/v2s.3m_strings), [msg](https://urbanjost.github.io/M_strings/msg.3m_strings)             
   use M_strings, only : [listout](https://urbanjost.github.io/M_strings/listout.3m_strings), [getvals](https://urbanjost.github.io/M_strings/getvals.3m_strings)             
   use M_strings, only : [glob](https://urbanjost.github.io/M_strings/glob.3m_strings), [ends_with](https://urbanjost.github.io/M_strings/ends_with.3m_strings)             
   use M_strings, only : [paragraph](https://urbanjost.github.io/M_strings/paragraph.3m_strings)             
   use M_strings, only : [base](https://urbanjost.github.io/M_strings/base.3m_strings), [decodebase](https://urbanjost.github.io/M_strings/decodebase.3m_strings), [codebase](https://urbanjost.github.io/M_strings/codebase.3m_strings), [base2](https://urbanjost.github.io/M_strings/base2.3m_strings)             
   use M_strings, only : [isalnum](https://urbanjost.github.io/M_strings/isalnum.3m_strings), [isalpha](https://urbanjost.github.io/M_strings/isalpha.3m_strings), [iscntrl](https://urbanjost.github.io/M_strings/iscntrl.3m_strings), [isdigit](https://urbanjost.github.io/M_strings/isdigit.3m_strings)             
   use M_strings, only : [isgraph](https://urbanjost.github.io/M_strings/isgraph.3m_strings), [islower](https://urbanjost.github.io/M_strings/islower.3m_strings), [isprint](https://urbanjost.github.io/M_strings/isprint.3m_strings), [ispunct](https://urbanjost.github.io/M_strings/ispunct.3m_strings)             
   use M_strings, only : [isspace](https://urbanjost.github.io/M_strings/isspace.3m_strings), [isupper](https://urbanjost.github.io/M_strings/isupper.3m_strings), [isascii](https://urbanjost.github.io/M_strings/isascii.3m_strings), [isblank](https://urbanjost.github.io/M_strings/isblank.3m_strings), [isxdigit](https://urbanjost.github.io/M_strings/isxdigit.3m_strings)             
   use M_strings, only : [isnumber](https://urbanjost.github.io/M_strings/isnumber.3m_strings)             
   use M_strings, only : [fortran_name](https://urbanjost.github.io/M_strings/fortran_name.3m_strings)             
   use M_strings, only : [describe](https://urbanjost.github.io/M_strings/describe.3m_strings)             
   use M_strings, only : [edit_distance](https://urbanjost.github.io/M_strings/edit_distance.3m_strings)             
   use M_strings, only : [cc](https://urbanjost.github.io/M_strings/cc.3m_strings)             
   use M_strings, only : [int](https://urbanjost.github.io/M_strings/int.3m_strings), [real](https://urbanjost.github.io/M_strings/real.3m_strings), [dble](https://urbanjost.github.io/M_strings/dble.3m_strings), [nint](https://urbanjost.github.io/M_strings/nint.3m_strings)             
   use M_strings, only : [int](https://urbanjost.github.io/M_strings/atoi.3m_strings), [real](https://urbanjost.github.io/M_strings/atol.3m_strings), [dble](https://urbanjost.github.io/M_strings/ato.3m_strings)

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
