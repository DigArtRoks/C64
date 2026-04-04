; A C64 quine - list revisited.
; By DigArtRoks

; Start printing the code at address $801
0 a=2049: rem c64 quine, list revisited

; If the 16 bit integer equals 0, then the end of the program is found.
if peek(a)=0 and peek(a+1)=0 then end

; The next 16 bit integer is the line number to be printed.
a=a+2: l=peek(a)+256*peek(a+1)
print mid$(str$(l),2) " ";: a=a+2

; Read a byte
8 v=peek(a): a=a+1

; If the byte is 0, the end of the line is found, go to the next line.
if v=0   then print         : goto 2

; Just print the bytes that less than 128.
if v<128 then print chr$(v);: goto 8

; Lookup the token and print them
if v=167 then print "then"; : goto 8
if v=153 then print "print";: goto 8
if v=137 then print "goto"; : goto 8
if v=139 then print "if";   : goto 8
if v=178 then print "=";    : goto 8
if v=170 then print "+";    : goto 8
if v=194 then print "peek"; : goto 8
if v=172 then print "*";    : goto 8
if v=179 then print "<";    : goto 8
if v=196 then print "str$"; : goto 8
if v=199 then print "chr$"; : goto 8
if v=202 then print "mid$"; : goto 8
if v=143 then print "rem";  : goto 8
if v=175 then print "and";  : goto 8
if v=128 then print "end";  : goto 8

; If an unknown token is found, print the value, preceeded by a question mark
;print "?(" v ")";
;goto 8
