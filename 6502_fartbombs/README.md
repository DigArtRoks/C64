# 6502 FART B\*MBS v2.0: Redefine the key for flagging a bomb

The game [6502 FART B\*MBS v2.0](https://csdb.dk/release/?id=257620) is a
classical minesweeper alike game. It is controled via the WASD keys to move the
cursor. The SPC key is used to uncover the tile. The F key is used to flag a
tile as holding a bomb.

The movement of the cursor using keys WASD and the flagging using key F can be
a bit uneasy, because the F key is next to the D key. It is not that 
straightforward to control the cursor moves and the flagging solely with the
left hand. Use the F key with the right hand feels also not that comfortable.

Therefore, here some tricks to use another key than F. The procedure consist of
loading the game but not run it or first quit it. Then execute the below poke(s)
in BASIC. Finally (re)run the game.

## Key scanning
The instruction at $1030 compares the last struck key with the character F
(PETSCII: $46).

To patch the F key to e.g. the O key: `poke 4145, asc("o")`

This is in fact sufficient to patch the game to use the O key. The below pokes
complete the patch by also replacing the character F in the intro and play
screen, so that the help information and the actual behavior of the game are 
consistent.


## Intro screen
The intro screen shows the objectives of the game and the keys to play the
game. The F key appears there as well. The instruction at $0ae5 puts the
character F into the screen buffer at address $072c.

To patch the intro screen accordingly to the actual scanned key, e.g. the O key:
`poke 2790, asc("o")`


## Play screen
The play screen gives at the bottom a summary of the keys to be used to play the
game. The F key appears there again. The instruction at $0f42 prints the 
character F. Position on the screen is dependent on the level that is played.

To patch the intro screen accordingly to the actual scanned key, e.g. the O key:
`poke 3907, asc("o")`

## Keys in use
When overriding the F key, pay attention, next keys are already in use: W, A, S,
D, SPC, L and N. Hence, these can not be used as a replacement for the F key.



# Reverse engineering: how?
The Monitor in the VICE emulator is used for this purpose. By using watchpoints
and stepping, you can figure out which instruction is setting/printing the letter
F and then patch it.

Character: F ($46)

## Key scanning
Keyboard buffer at $0277  

At the moment the play screen is displayed, create a watchpoint for load at
address $0277. Then hit key F. Notice that the keybuffer is read by the
KERNAL function at $e5b4: input from the keyboard buffer. Start stepping, soon
the processor returns into the game itself at address $0ff8 and then goes through
a switch case, comparing the received key in register A with the keymap.
A bit further, instruction $1031 compares the key with $46.

## Intro screen
Screen buffer is at $0400.

When the Intro screen appears, look up the location in the screen buffer of the 
character F. Use the command `sc` in the monitor and notice that F is at the
line starting at address $0720. Use `mem $720` to check that the reverse F is
displayed using screencode $86 = $06 (= screencode for F) OR'ed with $80
(= reverse video) at location $072c in memory.

Create a watchpoint for that location and the byte, stored at that location 
`w store $72c if (A=$86)` and restart the game. When the watchpoint is hit, notice
that it is in the KERNAL function at $ea1c: save the character and colour to the
screen at the cursor. Start stepping from then on till you return into the game
code (at address $0aea). Disassemble few instructions before this and notice that
the instruction at $0ae5 loads into register A the value $46 or letter F.

## Play screen
Use the same methodology as described in the previous section.
