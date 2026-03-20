; String based two-liner quine using abbreviations.
; By DigArtRoks

; These are the lines how it should be typed in on a C64.
;1 a$="1 a$=2 ?leF(a$,5)cH(34)a$cH(34):?rI(a$,37)"
;2 ?leF(a$,5)cH(34)a$cH(34):?rI(a$,37)

; However, petcat does not:
; * tokenize ? to print, use pR instead
1 a$="1 a$=2 ?leF(a$,5)cH(34)a$cH(34):?rI(a$,37)"
2 pRleF(a$,5)cH(34)a$cH(34):pRrI(a$,37)
