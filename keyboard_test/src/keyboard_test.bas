; Basic program visualising the status of the keys.
; By DigArtRoks
; - 1.68s per iteration

10 dim km$(7,7)
; Read the keymap in a 2d array
for r = 7 to 0 step -1
  for c = 7 to 0 step -1
    read km$(r,c)
  next c
next r

; Disable the the interrupt (disables KERNAL keyboard scan)
poke 56334, peek(56334) and 254

print "{clr}{down}"
print spc(13) "{wht}keyboard test{lgrn}{2 down}"
print "      7   6   5   4   3   2   1   0 pb"
print "{17 down}  pa{3 up}"

;   rm: row bitmask
;   im: inverted row bitmask
;   cm: col mask
;   pa: PortA reg of CIA1
;   pb: PortB reg of CIA1
;   s7: PortA value for scanning row 7
pa = 56320 : pb = 56321 : s7 = 127
100 rm = 1

; Scan each row
for r = 0 to 7
  im = not(rm) and 255
  poke pa, im

; Read the column mask
  cm = peek(pb)

; Increase the chance on detecting STOP + RESTORE by the NMI handler
; by setting scanline in between to line 7. The KERNAL NMI handler
; reads immediately the PortB register of CIA1, without setting up
; the scanline using PortA of the CIA1.
  poke pa, s7

  print "{lgrn}  " r "{lblu}";
; Print the column mask
  for c = 0 to 7
    if (cm and 128) then print "{lblu}"; : goto 200
    print "{wht}";
    200 print km$(r,7-c) " ";
    cm = cm + cm
  next c
  
  print "{3 up}"

  rm = rm + rm
next r
print "{16 down}";
goto 100

data"stp"," q "," c=","spc"," 2 ","ctl"," _ "," 1 "
data" / "," ^ "," = ","rsh","hom"," ; "," * "," \ "
data" , "," @ "," : "," . "," - "," l "," p "," + "
data" n "," o "," k "," m "," 0 "," j "," i "," 9 "
data" v "," u "," h "," b "," 8 "," g "," y "," 7 "
data" x "," t "," f "," c "," 6 "," d "," r "," 5 "
data"lsh"," e "," s "," z "," 4 "," a "," w "," 3 "
data"cdn"," f5"," f3"," f1"," f7","crt","ret","del"

; Enable the the interrupt again
; poke 56334, peek(56334) or 1 
