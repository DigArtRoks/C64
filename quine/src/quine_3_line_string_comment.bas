; String based three-liner quine using abbreviations and additional comment.
; By DigArtRoks

; These are the lines how it should be typed in on a C64.
;1 rem c64 quine
;2 a$="1 rem c64 quine2 a$=3 ?leF(a$,15):?mI(a$,16,5)cH(34)a$cH(34):?rI(a$,51)"
;3 ?leF(a$,15):?mI(a$,16,5)cH(34)a$cH(34):?rI(a$,51)

; However, petcat does not:
; * tokenize ? to print, use pR instead
1 rem c64 quine
2 a$="1 rem c64 quine2 a$=3 ?leF(a$,15):?mI(a$,16,5)cH(34)a$cH(34):?rI(a$,51)"
3 pRleF(a$,15):pRmI(a$,16,5)cH(34)a$cH(34):pRrI(a$,51)