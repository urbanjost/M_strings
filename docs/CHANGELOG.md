## GPF Changelog

The intent of this changelog is to keep everyone in the loop about
what's new in the M_strings project. It is a curated, chronologically ordered
list of notable changes including records of change such as bug fixes,
new features, changes, and relevant notifications.

"Do unto others as you would have them do unto you", as they say. When I
find OS (Open Source) resources, I am hoping a lot of these boxes can be
checked ...
   - [x] git repository on WWW (github)
   - [x] annotated source files with an open license
   - [x] unit test
   - [x] make(1) build
   - [x] fpm(1) build
   - [x] user manual (on-line)
   - [x] man-page
   - [x] app program
   - [x] demo program for public procedures
   - [x] developer documents (ford(1))
   - [x] CI/CD(Continious Integration/Development) verification (github actions)
   - [x] registered in fpm(1) repository

---
**2022-12-23**  John S. Urban  <https://github.com/urbanjost>

### :orange_circle: DIFF:
       + Renamed atleast(3f) to pad(3f). The atleast(3f) name remains as an 
         alias for pad(3f), but is deprecated.
### :green_circle: ADD:
       + Added rpad(3f), lpad(3f), cpad(3f) and zpad(3f) as shortcuts
         for common uses of pad(3f).
---
**2021-08-21**  John S. Urban  <https://github.com/urbanjost>

### :orange_circle: DIFF:
       + Removed support for type REAL128 by commenting out the lines,
	 as it is preventing use of the module in several programming
	 environments not supporting REAL128. Plan on returning support
	 once a standard preprocessor is available in fpm(1).
---
**2019-12-16**  John S. Urban  <https://github.com/urbanjost>

### :green_circle: ADD:
       +  initial release on github
---
<!--
### :orange_circle: DIFF:
       + renamed ADVICE(3f) to ALERT(3f)
### :green_circle: ADD:
       + advice(3f) was added to provide a standardized message format simply.
### :red_circle: FIX:
       + </bo> did not work on several terminal types, changed it to a more
         universally accepted value.
-->
