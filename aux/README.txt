
This is a mini version of M_journal which allows the M_strings.f90 module
to be built using make as a stand-alone distribution that is copied
into the directory when make(1) is used. The copy is deleted with a
"make clean".

This is so when built with make.shell(1) or fpm(1) it will use the
real M_journal.f90 file but that fpm(1) will not auto-discover the mini
M_journal.f90 file and built it and cause duplicates.
