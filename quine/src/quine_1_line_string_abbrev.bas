; String based one liner quine using abbreviations.
; By DigArtRoks

; This is the line how it should be typed in on a C64.
;1 a$="1 a$=:?leF(a$,5)cH(34)a$cH(34)rI(a$,34)":?leF(a$,5)cH(34)a$cH(34)rI(a$,34)

; However, petcat does not tokenize ? to print. It does tokenize pR to print, though
; that is in reality not supported by the BASIC screen editor.
1 a$="1 a$=:?leF(a$,5)cH(34)a$cH(34)rI(a$,34)":pRleF(a$,5)cH(34)a$cH(34)rI(a$,34)