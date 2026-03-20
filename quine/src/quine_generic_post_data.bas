; A generic C64 quine with data at the end of the code
; By DigArtRoks

1 read w$, x$, y$, z$, d$: d$=left$(d$,5): q$=chr$(34): i=9
2 r$=chr$(13): s$=chr$(32): print w$ r$ x$ r$ y$ r$ z$: restore
3 i=i+1: i$=str$(i)+s$: i$=right$(i$,len(i$)-1): read z$
4 print i$ d$ q$ z$ q$: if z$<>d$ goto 3
10 data "1 read w$, x$, y$, z$, d$: d$=left$(d$,5): q$=chr$(34): i=9"
11 data "2 r$=chr$(13): s$=chr$(32): print w$ r$ x$ r$ y$ r$ z$: restore"
12 data "3 i=i+1: i$=str$(i)+s$: i$=right$(i$,len(i$)-1): read z$"
13 data "4 print i$ d$ q$ z$ q$: if z$<>d$ goto 3"
14 data "data  "
15 data ""
16 data "! a generic c64 basic quine !"
17 data ""
18 data "data "
