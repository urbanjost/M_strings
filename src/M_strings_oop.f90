










!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
module M_strings_oop
!
! Define an OOP (Object-Oriented Programming) interface for the M_strings module.
!
! Leveraging the existing procedural functions in module M_strings to do the calculations allows
! this to be a definition of a derived type ( TYPE(STRING) ) and the
! methods it supports and overloading of operators to support the new data type.
!
use M_strings, only : upper, lower                       ! case
use M_strings, only : lenset, atleast, adjustc, compact, crop     ! whitespace
use M_strings, only : reverse
use M_strings, only : notabs, noesc, expand
use M_strings, only : substitute, transliterate
use M_strings, only : string_to_value, switch, v2s, s2v
use M_strings, only : switch, split, matchw
implicit none
private
integer,parameter,private :: dp=kind(0.0d0)
public p
!-----------------------------------------------------------------------------------------------------------------------------------
   public string
!-----------------------------------------------------------------------------------------------------------------------------------
!DERIVED TYPE STRING
!
type string
   ! COMPONENTS:
   character(len=:),allocatable :: str
contains
   ! METHODS:
   procedure  ::  adjustc        =>  oop_adjustc
   procedure  ::  adjustl        =>  oop_adjustl
   procedure  ::  adjustr        =>  oop_adjustr
   procedure  ::  compact        =>  oop_compact
   procedure  ::  crop           =>  oop_crop
   procedure  ::  dble           =>  oop_dble
   procedure  ::  expand         =>  oop_expand
   procedure  ::  index          =>  oop_index
   procedure  ::  init           =>  init_string
   procedure  ::  int            =>  oop_int
   procedure  ::  len            =>  oop_len
   procedure  ::  len_trim       =>  oop_len_trim
   procedure  ::  lenset         =>  oop_lenset
   procedure  ::  atleast        =>  oop_atleast
   procedure  ::  match          =>  oop_matchw
   procedure  ::  lower          =>  oop_lower
   procedure  ::  noesc          =>  oop_noesc
   procedure  ::  notabs         =>  oop_notabs
   procedure  ::  real           =>  oop_real
   procedure  ::  reverse        =>  oop_reverse
   procedure  ::  substitute     =>  oop_substitute
   procedure  ::  transliterate  =>  oop_transliterate
   procedure  ::  trim           =>  oop_trim
   procedure  ::  upper          =>  oop_upper
   procedure  ::  chars          =>  oop_switch
!-!   procedure  ::  split          =>  oop_split
   !DECLARATION OF OVERLOADED OPERATORS FOR TYPE(STRING)
   procedure,private :: eq
   generic           :: operator(==) => eq
   procedure,private :: lt
   generic           :: operator(<)  => lt
   procedure,private :: gt
   generic           :: operator(>)  => gt
   procedure,private :: ge
   generic           :: operator(>=) => ge
   procedure,private :: le
   generic           :: operator(<=) => le
   procedure,private :: ne
   generic           :: operator(/=) => ne

   procedure,private :: string_plus_value
   generic           :: operator(+) => string_plus_value   ! string + integer|real|doubleprecision|string|character
   procedure,private :: string_minus_value
   generic           :: operator(-) => string_minus_value  ! string - integer|real|doubleprecision|string|character
   procedure,private :: string_multiply_value
   generic           :: operator(*) => string_multiply_value  ! string * integer|real|doubleprecision
   procedure,private :: string_append_value
   generic           :: operator(//) => string_append_value

!-!   procedure,private :: minus_string
!-!   generic           :: operator(-)  => minus_string
end type
!===================================================================================================================================
! User-defined constructors are created by defining a generic interface
! with the same name as the derived type they're supposed to construct.
interface string
   module procedure construct_from_fill
end interface string
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
contains
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
! this function is used internally in the module, but is also declared to be a constructor for creating TYPE(DATE_TYPE) structures
!
function construct_from_fill(chars,len)

! ident_1="@(#)M_strings::construct_from_fill(3f): construct TYPE(STRING)"

character(len=*),intent(in),optional :: chars
integer,intent(in),optional          :: len
type(string)                         :: construct_from_fill
   if(present(chars))then
      construct_from_fill%str=chars
   else
      construct_from_fill%str=''
   endif
   if(present(len))then
      construct_from_fill%str=lenset(construct_from_fill%str,len)
   endif
end function construct_from_fill
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
! DEFINE THE METHODS FOR THE TYPE
! These functions are privately used to define the methods that TYPE(STRING) will support
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
function oop_len(self) result (length)

! ident_2="@(#)M_strings::oop_len(3f): length of string"

class(string),intent(in)    :: self
integer                     :: length
   length=len(self%str)
end function oop_len
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
function oop_len_trim(self) result (length)

! ident_3="@(#)M_strings::oop_len_trim(3f): trimmed length of string"

class(string),intent(in)    :: self
integer                     :: length
   length=len_trim(self%str)
end function oop_len_trim
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
function oop_switch(self) result (array)

! ident_4="@(#)M_strings::oop_switch(3f): convert string to array of single characters"

class(string),intent(in)    :: self
character(len=1)            :: array(len(self%str))
   array=switch(self%str)
end function oop_switch
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
function oop_index(self,substring,back) result (location)

! ident_5="@(#)M_strings::oop_index(3f): find starting position of a substring in a string"

class(string),intent(in)    :: self
character(len=*),intent(in) :: substring
integer                     :: location
logical,optional,intent(in) :: back
   if(present(back))then
      location=index(self%str,substring,back)
   else
      location=index(self%str,substring)
   endif
end function oop_index
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
function oop_upper(self) result (string_out)

! ident_6="@(#)M_strings::oop_upper(3f): convert string to uppercase"

class(string),intent(in)     :: self
type(string)                 :: string_out
   string_out%str=upper(self%str)
end function oop_upper
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
function oop_lower(self) result (string_out)

! ident_7="@(#)M_strings::oop_lower(3f): convert string to miniscule"

class(string),intent(in)     :: self
type(string)                 :: string_out
   string_out%str=lower(self%str)
end function oop_lower
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
function oop_expand(self,escape_char) result (string_out)

! ident_8="@(#)M_strings::oop_expand(3f): expand common escape sequences by calling expand(3f)"

class(string),intent(in)      :: self
character,intent(in),optional :: escape_char
type(string)                  :: string_out
   if(present(escape_char))then
      string_out%str=expand(self%str,escape_char)
   else
      string_out%str=expand(self%str)
   endif
end function oop_expand
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
function oop_trim(self) result (string_out)

! ident_9="@(#)M_strings::oop_trim(3f): trim trailing spaces"

class(string),intent(in)     :: self
type(string)                 :: string_out
   string_out%str=trim(self%str)
end function oop_trim
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
function oop_crop(self) result (string_out)

! ident_10="@(#)M_strings::oop_crop(3f): crop leading and trailing spaces"

class(string),intent(in)     :: self
type(string)                 :: string_out
   string_out%str=crop(self%str)
end function oop_crop
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
function oop_reverse(self) result (string_out)

! ident_11="@(#)M_strings::oop_reverse(3f): reverse string"

class(string),intent(in)     :: self
type(string)                 :: string_out
   string_out%str=reverse(self%str)
end function oop_reverse
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
function oop_adjustl(self) result (string_out)

! ident_12="@(#)M_strings::oop_adjustl(3f): adjust string to left"

class(string),intent(in)     :: self
type(string)                 :: string_out
   string_out%str=adjustl(self%str)
end function oop_adjustl
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
function oop_adjustr(self) result (string_out)

! ident_13="@(#)M_strings::oop_adjustr(3f): adjust string to right"

class(string),intent(in)     :: self
type(string)                 :: string_out
   string_out%str=adjustr(self%str)
end function oop_adjustr
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
function oop_adjustc(self,length) result (string_out)

! ident_14="@(#)M_strings::oop_adjustc(3f): adjust string to center"

class(string),intent(in)     :: self
type(string)                 :: string_out
integer,intent(in),optional  :: length
   if(present(length))then
      string_out%str=lenset(adjustc(self%str,length),length)
   else
      string_out%str=adjustc(self%str)
   endif
end function oop_adjustc
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
function oop_int(self) result (value)

! ident_15="@(#)M_strings::oop_int(3f): string to integer"

class(string),intent(in)     :: self
integer                      :: value
integer                      :: ierr
   call string_to_value(self%str,value,ierr)
end function oop_int
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
function oop_real(self) result (value)

! ident_16="@(#)M_strings::oop_real(3f): string to real"

class(string),intent(in)     :: self
real                         :: value
integer                      :: ierr
   call string_to_value(self%str,value,ierr)
end function oop_real
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
function oop_dble(self) result (value)

! ident_17="@(#)M_strings::oop_dble(3f): string to double"

class(string),intent(in)     :: self
doubleprecision              :: value
integer                      :: ierr
   call string_to_value(self%str,value,ierr)
end function oop_dble
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
function oop_compact(self,char) result (string_out)

! ident_18="@(#)M_strings::oop_compact(3f): adjust string to center"

class(string),intent(in)     :: self
type(string)                 :: string_out
character(len=*),optional    :: char
   if(present(char))then
      string_out%str=compact(self%str,char)
   else
      string_out%str=compact(self%str)
   endif
   string_out%str=trim(string_out%str)
end function oop_compact
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
function oop_substitute(self,old,new) result (string_out)

! ident_19="@(#)M_strings::oop_substitute(3f): change all occurrences of oldstring to newstring non-recursively"

class(string),intent(in)     :: self
type(string)                 :: string_out
character(len=*),intent(in)  :: old
character(len=*),intent(in)  :: new
   string_out%str=self%str
   call substitute(string_out%str,old,new)
end function oop_substitute
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
function oop_transliterate(self,old,new) result (string_out)

! ident_20="@(#)M_strings::oop_transliterate(3f): change all occurrences of oldstring to newstring non-recursively"

class(string),intent(in)     :: self
type(string)                 :: string_out
character(len=*),intent(in)  :: old
character(len=*),intent(in)  :: new
   string_out%str=transliterate(self%str,old,new)
end function oop_transliterate
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
function oop_atleast(self,length) result (string_out)

! ident_21="@(#)M_strings::oop_atleast(3f): set string to at least specified length"

class(string),intent(in)     :: self
type(string)                 :: string_out
integer,intent(in)           :: length
   string_out%str=atleast(self%str,length)
end function oop_atleast
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
function oop_lenset(self,length) result (string_out)

! ident_22="@(#)M_strings::oop_lenset(3f): set string to specific length"

class(string),intent(in)     :: self
type(string)                 :: string_out
integer,intent(in)           :: length
   string_out%str=lenset(self%str,length)
end function oop_lenset
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
function oop_matchw(self,pattern) result (answer)

! ident_23="@(#)M_strings::oop_matchw(3f): test if wildcard pattern matches string"

class(string),intent(in)     :: self
character(len=*),intent(in)  :: pattern
logical                      :: answer
   answer=matchw(self%str,pattern)
end function oop_matchw
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
function oop_notabs(self) result (string_out)

! ident_24="@(#)M_strings::oop_notabs(3f): expand tab characters assuming tab stops every eight(8) characters"

class(string),intent(in)     :: self
type(string)                 :: string_out
integer                      :: length
   string_out%str=lenset('',8*len(self%str)) ! make long enough assuming all tab characters
   call notabs(self%str,string_out%str,length)
   string_out%str=trim(string_out%str)
end function oop_notabs
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
function oop_noesc(self) result (string_out)

! ident_25="@(#)M_strings::oop_noesc(3f): replace non-printable characters with spaces"

class(string),intent(in)     :: self
type(string)                 :: string_out
   string_out%str=noesc(self%str)
end function oop_noesc
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
function p(self) result (string_out)

! ident_26="@(#)M_strings::oop_p(3f): return CHARACTER string from TYPE(STRING)"

class(string),intent(in)     :: self
character(len=len(self%str)) :: string_out
   string_out=self%str
end function p
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
subroutine init_string(self)
!
! allow for TYPE(STRING) object to be initialized.
!

! ident_27="@(#)M_strings::init_dt(3f): initialize TYPE(STRING)"

class(string)                        :: self
   self%str=''
end subroutine init_string
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
! FUNCTIONS FOR DEFINING OVERLOADED OPERATORS
!===================================================================================================================================
function string_plus_value(self,value) result (other)

! ident_28="@(#)M_strings::string_plus_value(3f): add value to TYPE(STRING)"

class(string),intent(in)      :: self
type(string)                  :: other
class(*),intent(in)           :: value
!  This function is primarily intended to provide behaviors for the "+" operator for TYPE(STRING) values
!  Notice that the value can be any of several types ( INTEGER,REAL,DOUBLEPRECISION,CHARACTER,TYPE(STRING) )
   select type(value)
   type is (integer);          other%str=v2s(value+s2v(self%str))  ! convert string%str to integer, add to value
   type is (real);             other%str=v2s(value+s2v(self%str))  ! convert string%str to real, add to value
   type is (doubleprecision);  other%str=v2s(value+s2v(self%str))  ! convert string%str to doubleprecision, add to value
   type is (character(len=*)); other%str=self%str//' '//value      ! append space and CHARACTER to string %str
   type is (string);           other%str=self%str//' '//value%str  ! append string %str values with space between
   end select
end function string_plus_value
!===================================================================================================================================
function string_minus_value(self,value) result (other)

! ident_29="@(#)M_strings::string_minus_value(3f): subtract value from TYPE(STRING)"

class(string),intent(in)      :: self
type(string)                  :: other
class(*),intent(in)           :: value
!  This function is primarily intended to provide behaviors for the "-" operator for TYPE(STRING) values
!  Notice that the value can be any of several types ( INTEGER,REAL,DOUBLEPRECISION,CHARACTER,TYPE(STRING) )
   select type(value)
   type is (integer);         other%str=v2s(value-s2v(self%str))
   type is (real);            other%str=v2s(value-s2v(self%str))
   type is (doubleprecision); other%str=v2s(value-s2v(self%str))
   type is (character(len=*))
      other%str=self%str
      call substitute(other%str,value,'')
   type is (string)
      other%str=self%str
      call substitute(other%str,value%str,'')
   end select
end function string_minus_value
!===================================================================================================================================
function string_append_value(self,value) result (other)

! ident_30="@(#)M_strings::string_append_value(3f): append value to TYPE(STRING)"

class(string),intent(in)      :: self
type(string)                  :: other
class(*),intent(in)           :: value
!  This function is primarily intended to provide behaviors for the "//" operator for TYPE(STRING) values
!  Notice that the value can be any of several types ( INTEGER,REAL,DOUBLEPRECISION,CHARACTER,TYPE(STRING) )
   select type(value)
   type is (integer);          other%str=self%str//v2s(value)
   type is (real);             other%str=self%str//v2s(value)
   type is (doubleprecision);  other%str=self%str//v2s(value)
   type is (character(len=*)); other%str=self%str//value
   type is (string);           other%str=self%str//value%str
   end select
end function string_append_value
!===================================================================================================================================
function string_multiply_value(self,value) result (other)

! ident_31="@(#)M_strings::string_multiply_value(3f): multiply TYPE(STRING) value times"

class(string),intent(in)      :: self
type(string)                  :: other
class(*),intent(in)           :: value
!  This function is primarily intended to provide behaviors for the "//" operator for TYPE(STRING) values
!  Notice that the value can be any of several types ( INTEGER,REAL,DOUBLEPRECISION )
   select type(value)
   type is (integer);          other%str=repeat(self%str,value)
   type is (real);             other%str=repeat(self%str,nint(value))
   type is (doubleprecision);  other%str=repeat(self%str,nint(value))
   end select
end function string_multiply_value
!===================================================================================================================================
logical function eq(self,other)

! ident_32="@(#)M_strings::eq(3f): compare derived type string objects (eq,lt,gt,le,ge,ne)"

   class(string),intent(in) :: self
   type(string),intent(in)  :: other
   eq= self%str .eq. other%str
end function eq
logical function lt(self,other)
   class(string),intent(in) :: self
   type(string),intent(in)  :: other
   lt= self%str .lt. other%str
end function lt
logical function gt(self,other)
   class(string),intent(in) :: self
   type(string),intent(in)  :: other
   gt= self%str .gt. other%str
end function gt
logical function le(self,other)
   class(string),intent(in) :: self
   type(string),intent(in)  :: other
   le= self%str .le. other%str
end function le
logical function ge(self,other)
   class(string),intent(in) :: self
   type(string),intent(in)  :: other
   ge= self%str .ge. other%str
end function ge
logical function ne(self,other)
   class(string),intent(in) :: self
   type(string),intent(in)  :: other
   ne= self%str .ne. other%str
end function ne
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
end module M_strings_oop
!===================================================================================================================================
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()!
!===================================================================================================================================
