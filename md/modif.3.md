<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c100">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>modif(3f)</b> - [M_strings:EDITING] emulate the MODIFY command from the line editor XEDIT <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="6">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
subroutine <b>modif</b>(cline,cmod)
<br />
    character(len=*) :: cline ! input string to change
    character(len=*) :: cmod  ! directive provides directions on changing string
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <p><b>MODIF</b>(3f) Modifies the line currently pointed at using a directive that acts much like a line editor directive. Primarily used to create
        interactive utilities such as input history editors for interactive line-mode programs.</p>
        <p>the modify directives are as follows-</p>
      </blockquote><a name=""></a>
      <h4><a name="">    DIRECTIVE EXPLANATION</a></h4>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c101" colspan="1">^STRING#</td>
            <td>
              Causes the string of characters between the ^ and the next # to be inserted before the characters pointed to by the ^. an ^ or &amp; within
              the string is treated as a regular character. If the closing # is not specified, <b>MODIF</b>(3f) inserts the remainder of the line as if a #
              was specified after the last nonblank character.
              <p>There are two exceptions. the combination ^# causes a # to be inserted before the character pointed to by the ^, and an ^ as the last
              character of the directives causes a blank to be inserted.</p>
            </td>
          </tr>
          <tr valign="top">
            <td class="c101" width="6%" nowrap="nowrap">#</td>
            <td valign="bottom">(When not the first # after an ^) causes the character above it to be deleted.</td>
          </tr>
          <tr valign="top">
            <td class="c101" width="6%" nowrap="nowrap">&amp;</td>
            <td valign="bottom">Replaces the character above it with a space.</td>
          </tr>
          <tr valign="top">
            <td class="c101" width="6%" nowrap="nowrap">(SPACE)</td>
            <td valign="bottom">A space below a character leaves it unchanged.</td>
          </tr>
        </table>Any other character replaces the character above it.
      </blockquote><a name="3"></a>
      <h3><a name="3">EXAMPLES</a></h3>
      <blockquote>
        Example input/output:
        <pre>
   THE INPUT LINE........ 10 THIS STRING  TO BE MORTIFD
   THE DIRECTIVES LINE...        ^ IS THE#        D#  ^IE
   ALTERED INPUT LINE.... 10 THIS IS THE STRING  TO BE MODIFIED
<br />
</pre>Sample program:
        <pre>
   program demo_modif
   use M_strings, only : modif
   implicit none
   character(len=256)           :: line
   integer                      :: ios
   integer                      :: count
   integer                      :: COMMAND_LINE_LENGTH
   character(len=:),allocatable :: COMMAND_LINE
      ! get command name length
      call get_command_argument(0,length=count)
      ! get command line length
      call get_command(length=COMMAND_LINE_LENGTH)
      ! allocate string big enough to hold command line
      allocate(character(len=COMMAND_LINE_LENGTH+200) :: COMMAND_LINE)
      ! get command line as a string
      call get_command(command=COMMAND_LINE)
      ! trim leading spaces just in case
      COMMAND_LINE=adjustl(COMMAND_LINE)
      ! remove command name
      COMMAND_LINE=adjustl(COMMAND_LINE(COUNT+2:))
      INFINITE: do
         read(*,'(a)',iostat=ios)line
         if(ios.ne.0)exit
         call modif(line,COMMAND_LINE)
         write(*,'(a)')trim(line)
      enddo INFINITE
   end program demo_modif
<br />
</pre>
      </blockquote><a name="4"></a>
    </div>
  </div>
</body>
