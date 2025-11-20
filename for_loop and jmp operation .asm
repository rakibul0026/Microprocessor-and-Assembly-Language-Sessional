INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC

    ; INC BX = BX+1 ; BX++
    ; DEC BX = BX-1 ; BX--

    MOV BX, 0
    MOV CX, 5

    ; FOR(BX = 0 ; BX < CX ; BX++)

STAT:
    CMP BX, CX
    JE LAST       ;Jump if Equal
    PRINTN "HELLO WORLD"
    INC BX
    JNE STAT      ;Jump if Not Equal

LAST:
    PRINT "THE PROGRAMMING IS END"

EXIT:
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
