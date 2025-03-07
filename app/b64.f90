program demo_base64
use  M_io,      only : filebyte
use  M_strings, only : encode_base64, decode_base64
use  M_CLI2,    only : set_args, iget, lget, infiles=>unnamed
! @(#) encode data to base64 encryption as defined by RFC-4648 and print to standard output
implicit none
character(len=1),allocatable :: text(:)
character(len=:),allocatable :: help_text(:), version_text(:)
integer                      :: wrap
logical                      :: decode, ignore_garbage
   call setup()
   call set_args('--wrap:w 76 --decode:d F --ignore-garbage:i F',help_text,version_text)
   wrap=iget('wrap')
   ignore_garbage=lget('ignore-garbage')
   decode=lget('decode')
   if(size(infiles).eq.0)infiles=[character(len=1):: '-']
   call filebyte(infiles(1),text) ! allocate character array and copy file into it
   if(.not.allocated(text))then
      stop '<ERROR>*base64* text not allocated'
   endif
   select case(decode)
   case(.false.)
           write(*,fmt='(*(a))',advance='no')encode_base64(text,width=wrap)
   case default
           write(*,fmt='(*(a))',advance='no')decode_base64(text,ignore_garbage=ignore_garbage)
   end select
contains
subroutine setup()
! notes:
! currently stdin and stdout cannot be defined as streams, so stdin should
! be restricted to ASCII files with a newline terminator at end, and stdout is
! potentially subject to linelength limits of the platform, because non-advancing I/O is not stream I/O
! reading input into memory could be expensive if the file is large
! this routine currently reads stdin until an end-of-file while writing it to a scratch file first,
! which can be slow and use file space resources
! can change it to process the file in a buffered mannner so reading from stdin is performed more efficiently
help_text=[ CHARACTER(LEN=128) :: &
'NAME',&
'   b64-(1f) - [FUNIX:FILESYSTEM] encode/data specified file to stdout',&
'   using base64 encoding as defined in RFC-4648                      ',&
'   (LICENSE:MIT)                                                     ',&
'                                                                     ',&
'SYNOPSIS                                                             ',&
'    b64- [[ --decode] [ --ignore-garbage]]|[ --wrap COLS] [FILE]     ',&
'    |[ --help|--version]                                             ',&
'                                                                     ',&
'DESCRIPTION                                                          ',&
'   b64(1f) encodes or decodes a file as described for the            ',&
'   b64alphabet-encoding in RFC 4648.  When decoding, whitespace characters',&
'   on input are ignored.                                                  ',&
'                                                                          ',&
'   b64(1f) takes stdin or one filename on the command line and encodes    ',&
'   or decodes it onto standard output.                                    ',&
'                                                                          ',&
'   With no FILE, or when FILE is "-", read standard input.                ',&
'                                                                          ',&
'   To ignore all bytes not in the formal base64 alphabet, use             ',&
'   --ignore-garbage. This option will attempt to recover from any other   ',&
'   non-alphabet bytes in the encoded stream.                              ',&
'                                                                          ',&
'OPTIONS                                                                   ',&
'                                                                          ',&
'    filename             name of file to encode                           ',&
'    --decode,-d          decode instead of encode data                    ',&
'    --ignore-garbage,i   when decoding, ignore non-alphabet characters    ',&
'    --wrap=COLS,-w COLS  wrap encoded lines after COLS characters         ',&
'                         (default 76). Use 0 to disable line wrapping     ',&
'    --version,-v         Print version information on standard output then',&
'                         exit successfully.                               ',&
'    --help,-h            Print usage information on standard output then  ',&
'                         exit successfully.                               ',&
'EXAMPLE                                                                   ',&
'   Sample commands                                                        ',&
'                                                                          ',&
'    b64 input > output.b64                                                ',&
'                                                                          ',&
'SEE ALSO                                                                  ',&
'    base64(1), uuencode(1), uudecode(1)                                   ',&
'']
version_text=[ CHARACTER(LEN=128) :: &
'PRODUCT:        GPF (General Purpose Fortran) utilities and examples',&
'PROGRAM:        b64(1f)                                             ',&
'DESCRIPTION:    encode a file to the base 64 encoding standard defined in RFC-4648',&
'VERSION:        1.0, 2024-11-11                                                   ',&
'AUTHOR:         John S. Urban                                                     ',&
'LICENSE:        MIT                                                               ',&
'']
end subroutine setup

end program demo_base64
