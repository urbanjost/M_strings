! dmtestbase64.f90
!
! Author:  Philipp Engel
! Licence: ISC
program dmtestbase64
    !! Test program for Base64 encoding.
    use :: dmpack
    implicit none (type, external)
    integer, parameter :: NTESTS = 1

    type(test_type) :: tests(NTESTS)
    logical         :: stats(NTESTS)

    tests(1) = test_type('dmtestbase64.test01', test01)

    call dm_init()
    call dm_test_run(tests, stats, dm_env_has('NO_COLOR'))
contains
    logical function test01() result(stat)
        character(len=*), parameter :: INPUT = &
            'Now is the time for all good men to come to the aid of the party.'
        character(len=*), parameter :: ASSERT1 = &
            'Tm93IGlzIHRoZSB0aW1lIGZvciBhbGwgZ29vZCBtZW4gdG8gY29tZSB0byB0aGUgYWlkIG9mIHRoZSBwYXJ0eS4='
        character(len=*), parameter :: ASSERT2 = &
            'Tm93IGlzIHRoZSB0aW1lIGZvciBhbGwgZ29vZCBtZW4gdG8gY29tZSB0byB0aGUgYWlkIG9mIHRo' // CR_LF // &
            'ZSBwYXJ0eS4='

        character(len=:), allocatable :: output1, output2, output3

        stat = TEST_FAILED

        call dm_base64_encode(INPUT, output1)
        call dm_base64_encode(INPUT, output2, mime=.true.)
        call dm_base64_encode('', output3)

        print *, 'Checking encoded string ...'
        if (output1 /= ASSERT1) return
        print *, 'Checking encoded string (MIME) ...'
        if (output2 /= ASSERT2) return

        stat = TEST_PASSED
    end function test01
end program dmtestbase64
Copyright (c) 2023, Philipp Engel

Permission to use, copy, modify, and/or distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
