<?
<body>
  <a name="top" id="top"></a>

  <h5><a href="download.html">[UP]</a></h5>

  <div id="Container">
    <div id="Content">
      <div class="c5">
      </div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>c2s(3f)</b> - [M_strings:ARRAY] convert C string pointer to Fortran character string <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>

      <h3><a name="8">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
function <b>c2s</b>(<i>c_string_pointer</i>) <b>result</b>(<i>f_string</i>)
<br />    type(c_ptr), intent(in)       :: c_string_pointer
    character(len=:), allocatable :: f_string
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        Given a C pointer to a character string return a Fortran character string.
      </blockquote><a name="3"></a>

      <h3><a name="3">OPTIONS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c6" colspan="1">c_string_pointer</td>
            <td>C pointer to convert</td>
          </tr>

        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">RETURNS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c6" colspan="1">f_string</td>
            <td>Fortran character variable to return</td>
          </tr>

        </table>
      </blockquote><a name="5"></a>

      <h3><a name="5">EXAMPLE</a></h3><a name="6"></a>

    </div>
  </div>
</body>
</html>
