; Data based two-liner quine using abbreviations and additional comment.
; By DigArtRoks

; These are the lines how it should be typed in on a C64.
;1 rEa$:?leF(a$,66):?rI(a$,5)cH(34)a$cH(34):rem **** c64 quine ****
;2 dA "1 rEa$:?leF(a$,66):?rI(a$,5)cH(34)a$cH(34):rem **** c64 quine ****2 dA "

; However, petcat does not:
; * tokenize ? to print, use pR instead
; * tokenize rE to read, use reA instead
1 reAa$:pRleF(a$,66):pRrI(a$,5)cH(34)a$cH(34):rem **** c64 quine ****
2 dA "1 rEa$:?leF(a$,66):?rI(a$,5)cH(34)a$cH(34):rem **** c64 quine ****2 dA "