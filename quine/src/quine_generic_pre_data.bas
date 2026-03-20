; A generic C64 quine with data at the beginning of the code.
; By DigArtRoks

1 data "data  "
2 data "! a generic c64 basic quine !"
3 data "1000 read d$: d$=left$(d$,5): restore: q$=chr$(34): i=0"
4 data "1001 i=i+1: u$=v$: v$=w$: w$=x$: x$=y$: y$=z$"
5 data "1002 i$=str$(i)+chr$(32): i$=right$(i$,len(i$)-1): read z$"
6 data "1003 print i$ d$ q$ z$ q$: if z$<>d$ goto 1001"
7 data "1004 r$=chr$(13): print u$ r$ v$ r$ w$ r$ x$ r$ y$"
8 data "data "
1000 read d$: d$=left$(d$,5): restore: q$=chr$(34): i=0
1001 i=i+1: u$=v$: v$=w$: w$=x$: x$=y$: y$=z$
1002 i$=str$(i)+chr$(32): i$=right$(i$,len(i$)-1): read z$
1003 print i$ d$ q$ z$ q$: if z$<>d$ goto 1001
1004 r$=chr$(13): print u$ r$ v$ r$ w$ r$ x$ r$ y$
