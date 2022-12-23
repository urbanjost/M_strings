![string](docs/images/alphabet.gif)
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

     use M_strings, only : split,delim,chomp
     use M_strings, only : substitute,change,modif,transliterate,reverse,replace,join
     use M_strings, only : upper,lower,upper_quoted
     use M_strings, only : rotate13
     use M_strings, only : adjustc,compact,nospace,indent,crop,unquote,quote
     use M_strings, only : len_white,pad,lpad,rpad,zpad,stretch,lenset,merge_str
     use M_strings, only : switch,s2c,c2s
     use M_strings, only : noesc,notabs,expand,uc,visible
     use M_strings, only : string_to_value,string_to_values,s2v,s2vs,value_to_string,v2s,msg
     use M_strings, only : listout,getvals
     use M_strings, only : matchw
     use M_strings, only : fmt
     use M_strings, only : base, decodebase, codebase
     use M_strings, only : isalnum, isalpha, iscntrl, isdigit, isgraph, islower,
                           isprint, ispunct, isspace, isupper, isascii, isblank, isxdigit

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
