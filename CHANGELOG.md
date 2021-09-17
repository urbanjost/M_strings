## GPF Changelog

The intent of this changelog is to keep everyone in the loop about
what's new in the M_strings project. It is a curated, chronologically ordered
list of notable changes including records of change such as bug fixes,
new features, changes, and relevant notifications.

---
**2021-08-21**  John S. Urban  <https://github.com/urbanjost>

### :orange_circle: DIFF:
       + Removed support for type REAL128 by commenting out the lines,
	 as it is preventing use of the module in several programming
	 environments not supporting REAL128. Plan on returning support
	 once a standard preprocessor is available in fpm(1).
---

<!--
### :orange_circle: DIFF:
### :green_circle: ADD:
### :red_circle: FIX:
   - [x] manpage
   - [x] demo program
   - [ ] unit test
-->
