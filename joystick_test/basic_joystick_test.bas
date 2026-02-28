; Basic program visualising the status of the joysticks.
; By DigArtRoks

10 print "{clr}{6 down}" spc(13)
print "{wht}joystick  test{lblu}"
print "{down}" spc(14) "js1      js2"

; Position the cursor at character U of joystick 1
print "{down}" spc(15)

; Joystick 1
100 j=not peek(56321)
gosub 200
print "{9 rght}";

; Joystick 2
j=not peek(56320)
gosub 200
print "{9 left}";

goto 100


; Subroutine to print the status of the joystick
; Up
200 if (j and1) then print "{rvon}{wht}";
print "u{rvof}{lblu}{2 down}{3 left}";

; Left
if (j and4) then print "{rvon}{wht}";
print "l{rvof}{lblu} ";

; Fire
if (j and16) then print "{rvon}{wht}";
print "f{rvof}{lblu} ";

; Right
if (j and8) then print "{rvon}{wht}";
print "r{rvof}{lblu}{2 down}{3 left}";

; Down
if (j and2) then print "{rvon}{wht}";
print "d{rvof}{lblu}";

; Position the cursor back at character U
print "{4 up}{left}";
return
