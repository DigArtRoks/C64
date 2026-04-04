# C64 Quines

## What?

A [quine](https://en.wikipedia.org/wiki/Quine_(computing)) is a computer
program that takes no input and produces a copy of its own source code as
its only output. It is a "self-replicating programs".

This topic presents some quines on the C64 using BASIC.

This page presents the summary of my findings. A more elaborate version can be
read in the [long version](quine.md) giving more details, other trials, how
they work and so on.

## One-liners

In this section, 2 one-liners are presented. They are real quines that consists
of one single line of code and that replicates themself.  
They have been described before by Daniele Olmisani on
[GitHub.io](https://mad4j.github.io/notes-quine/) and
[GitHub.com](https://github.com/mad4j/c64-codeart). Credits to Daniele.

![Screenshot string based one-liner abbreviations](res/quine_1_line_string_abbrev.png)

![Screenshot data based one-liner no spaces](res/quine_1_line_data_no_spc.png)

## Two-liners

![Screenshot string based two-liner full](res/quine_2_line_string_full.png)

![Screenshot data based two-liner full](res/quine_2_line_data_full.png)

## Three-liner

![Screenshot string based three-liner comment](res/quine_3_line_string_comment.png)

## A generic quine

![Screenshot generic final](res/quine_generic_final.png)

## LIST revisited

![Screenshot LIST revisited](res/quine_list_revisited.png)


## Typing over the code

When typing over the code from the snippets, just literally follow the case as
presented in the snippet. Depending on character set chosen on the C64, it
appears differerently on the screen. At bootup, the C64 uses the UPPER/glyph
set. Using *C= + Shift* combination, the character set can be switched back and
forth to the lower/UPPER character set.

Next table shows how a character in the snippet appears on the C64 screen
depending the selected character set.

  | Snippet     | UPPER/glyph  | lower/UPPER   |
  | ----------- | ------------ | ------------- |
  | lower case  | UPPER case   | lower case    |
  | UPPER case  | Glyph        | UPPER case    |



## Deliverables

* **res/*.png**: Screenshots of the quines in action.
* **src/*.bas**: The BASIC code for the quines in ASCII format, to be tokenized
   with *VICE petcat* in order to run it on a C64 or emulator.
* **bin/*.prg**: Tokenized versions of the quines. Can be run directly on a C64
  or emulator. No need to type them in. Just enjoy.

## Building with *VICE petcat*

* Download the *VICE* emulator. Add the path of the VICE binaries directory
  to your environment variables.
* Tokenize the source code with the following command:

  `petcat -w2 -o bin/example.prg -f -- src/example.bas`

## References

* VICE Emulator: https://vice-emu.sourceforge.io



