<?
<body>
  <a name="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c85">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>listout(3f)</b> - [M_strings:NUMERIC] expand a list of numbers where negative numbers denote range ends (1 <b>-10</b> means 1 thru 10)
        <b>(LICENSE:PD)</b>
      </blockquote><a name="contents"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
subroutine <b>listout</b>(icurve_lists,icurve_expanded,inums,ierr)
<br />
   integer,intent(in)    :: icurve_lists(:)
   integer,intent(out)   :: icurve_expanded(:)
   integer,intent(out)   :: inums
   integer,intent(out)   :: ierr
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td colspan="1"><b>icurve_lists</b>(:)</td>
            <td>input array</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td colspan="1"><b>icurve_expanded</b>(:)</td>
            <td>output array; assumed large enough to hold returned list</td>
          </tr>
          <tr valign="top">
            <td class="c86" width="6%" nowrap="nowrap">inums</td>
            <td valign="bottom">number of icurve_expanded numbers on output</td>
          </tr>
          <tr valign="top">
            <td class="c86" width="6%" nowrap="nowrap">ierr</td>
            <td valign="bottom">zero if no error occurred</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample program:
        <pre>
    program demo_listout
    use M_strings, only : listout
    implicit none
    integer,allocatable :: icurve_lists(:)        
    integer :: icurve_expanded(1000)  
    ! icurve_lists is input array
    integer :: inums                  
    ! icurve_expanded is output array
    integer :: i
    ! number of icurve_lists values on input, number of icurve_expanded numbers on output
    integer :: ierr
       icurve_lists=[1, 20, -30, 101, 100, 99, 100, -120, 222, -200]
       inums=size(icurve_lists)
       call listout(icurve_lists,icurve_expanded,inums,ierr)
       if(ierr.eq.0)then
          write(*,'(i0)')(icurve_expanded(i),i=1,inums)
       else
          write(*,'(a,i0)')'error occurred in *listout* ',ierr
          write(*,'(i0)')(icurve_expanded(i),i=1,inums)
       endif
    end program demo_listout
<br />
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
