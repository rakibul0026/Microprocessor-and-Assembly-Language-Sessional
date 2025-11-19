.MODEL SMALL
.STACK 100H
.DATA
V1 DB "Enter the number :$" 
V2 DB "The number is:$"  
VL DB ?

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,V1  ;SHOW ->Enter the number :
    INT 21H 
    
    
    MOV AH,2
    MOV DL,10
    INT 21H    ;NEWLINE
    MOV DL,13
    INT 21H
    
    
    MOV AH,1
    INT 21H     ;INPUT
    MOV VL,AL 
    
    
    MOV AH,2
    MOV DL,10
    INT 21H     ;NEWLINE
    MOV DL,13
    INT 21H
    
    
    MOV AH,9
    LEA DX,V2    ;SHOW  ->"The number is: "         
    INT 21H
    
    
    MOV AH,2
    MOV DL, VL
    INT 21H
            
            
    EXIT:
    MOV AH,4CH
    MAIN ENDP
END MAIN
    
    
   
   
