.MODEL SMALL
.STACK 100H
.CODE
.DATA

MSG1 DB "MD RAKIBUL HASSAN $"
MSG2 DB "MD RATUL $"

MAIN PROC
    MOV AX,@DATA  ;INITIALIATION
    MOV DS,AX      
    
    
    LEA DX ,MSG1     ; Print first message
    MOV AH,9
    INT 21H  
    
    MOV AH,2
    MOV DL,10
    INT 21H            ;newline
    MOV DL,13
    INT 21H
    
    

    LEA DX,MSG2       ; Print Second message
    MOV AH,9
    INT 21H 
    
    EXIT:
    MOV AH,4CH
    MAIN ENDP
END MAIN
