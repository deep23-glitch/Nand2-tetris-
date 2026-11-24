// Draw 4 black words in a column at the top-left of the screen,
// then wait until the 'q' key (code 113) is pressed.

@SCREEN         // 16384
M=-1
@16416          // 16384 + 32
M=-1
@16448          // 16384 + 64
M=-1
@16480          // 16384 + 96
M=-1

(WAIT)
@KBD
D=M
@113            // 'q'
D=D-A
@END
D;JEQ           // q pressed -> stop
@WAIT
0;JMP           // otherwise keep checking

(END)
@END
0;JMP
