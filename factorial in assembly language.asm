;factorial in assembly language


.MODEL SMALL
.STACK 100H

.DATA
    NUM DW 5         
    RESULT DW ?       

.CODE
MAIN PROC
   
    MOV AX, @DATA
    MOV DS, AX

  
    MOV AX, 1         
    MOV CX, 3      

  
CALC_LOOP:
    MUL CX            
   LOOP CALC_LOOP    
     MOV RESULT, AX 
    
   
   
   
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
