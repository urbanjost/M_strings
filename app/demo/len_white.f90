          program demo_len_white

            use M_strings, only : len_white
            character(len=80) ::  s
            intrinsic len

            s=' ABCDEFG abcdefg '
            ilen = len(s)
            lastnb = len_white(s)

            write(*,*) 'total length of variable is ',ilen
            write(*,*) 'trimmed length of variable is ',lastnb
            write(*,*) 'trimmed string=[',s(:lastnb),']'

              end program demo_len_white
