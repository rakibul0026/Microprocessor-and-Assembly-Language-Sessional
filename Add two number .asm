.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    MOV AH,1  ;INPUT FUNCTION
    INT 21H
    
    MOV BL,AL  ;1ST INPUT
    INT 21H
    
    MOV BH,AL    ;2ND INPUT
  
    

    
   ADD  BL,BH    ;SUM
   
    
    
    
   MOV AH,2
   MOV DL,10      ;NEWLINE
   INT 21H
   MOV DL,13 
   INT 21H
    
   
   MOV AH,2 
   SUB BL,48
   MOV DL,BL    ;print
   INT 21H
   
    
   EXIT:
   MOV AH,4CH
   INT 21H
   MAIN ENDP
END MAIN
