; A generic C64 quine (final version).
; By DigArtRoks

1 read d$: rem * a c64 quine *
2 q$=chr$(34): s$=chr$(32): i=0
3 i=i+1: i$=mid$(str$(i),2)
4 read a$: if a$=d$ goto 6
5 print i$ s$ a$: goto 3
6 restore: d$=d$+s$
7 i$=mid$(str$(i),2): read a$
8 print i$ s$ d$ q$ a$ q$
9 i=i+1: if a$<>d$ goto 7
10 data "data"
11 data "read d$: rem * a c64 quine *"
12 data "q$=chr$(34): s$=chr$(32): i=0"
13 data "i=i+1: i$=mid$(str$(i),2)"
14 data "read a$: if a$=d$ goto 6"
15 data "print i$ s$ a$: goto 3"
16 data "restore: d$=d$+s$"
17 data "i$=mid$(str$(i),2): read a$"
18 data "print i$ s$ d$ q$ a$ q$"
19 data "i=i+1: if a$<>d$ goto 7"
20 data "data"
21 data "> add here more text lines <"
22 data "data "