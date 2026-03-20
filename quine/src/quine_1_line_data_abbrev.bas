; Data based one liner quine using abbreviations.
; By DigArtRoks

; This is the line how it should be typed in on a C64.
;1 rEa$:?a$cH(34)a$cH(34):dA"1 rEa$:?a$cH(34)a$cH(34):dA"

; However, petcat does not:
; * tokenize ? to print, use pR instead
; * tokenize rE to read, use reA instead
; The alternatives are in reality not supported by the BASIC screen editor.
1 reAa$:pRa$cH(34)a$cH(34):dA"1 rEa$:?a$cH(34)a$cH(34):dA"
