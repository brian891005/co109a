// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
@16383
D=A
@20
M=D
@21
M=D
@8192
D=A
M=D
@8193
M=D
@24576
D=M
@27
D;JEQ
@20
M=M+1
D=M
A=D
M=-1
@8193
M=M-1
D=M
@39
D;JEQ
@15
0;JMP
@21
M=M+1
D=M
A=D
M=0
@8192
M=M-1
D=M
@39
D;JEQ
@27
0;JMP
@0
0;JMP