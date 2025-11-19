.MODEL SMALL
.STACK 100H
.DATA
V1 DB "Enter 1ST number :$"
V3 DB "Enter 2nd number :$" 
V2 DB "The 1ST number is:$"
V4 DB "The 2ND number is:$" 
 
VL DB ?  
VH DB ?

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,V1  ;SHOW ->Enter 1st the number :
    INT 21H
      
    MOV AH,1
    INT 21H     ;INPUT
    MOV VL,AL 
               
    
    
    MOV AH,2
    MOV DL,10
    INT 21H    ;NEWLINE
    MOV DL,13
    INT 21H   
    
   
    
      
    MOV AH,9
    LEA DX,V3  ;SHOW ->Enter 2nd the number :
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV VH,AL 
    
    
    MOV AH,2
    MOV DL,10
    INT 21H    ;NEWLINE
    MOV DL,13
    INT 21H
    
    
   
    
    MOV AH,2
    MOV DL,10
    INT 21H     ;NEWLINE
    MOV DL,13
    INT 21H
    
    
    MOV AH,9
    LEA DX,V2    ;SHOW  ->"The 1ST number is: "         
    INT 21H 
    
    
    
    
    
    MOV AH,2
    MOV DL, VL    ;PRINT
    INT 21H
              
              
    MOV AH,2
    MOV DL,10
    INT 21H     ;NEWLINE
    MOV DL,13
    INT 21H  
    
    
    MOV AH,9
    LEA DX, V4
    INT 21H
    
    MOV AH,2
    MOV DL,VH  ;SHOW  ->"The 2ND number is: "  
    INT 21H
    
            
    EXIT:
    MOV AH,4CH
    MAIN ENDP
END MAIN
    
    
   
   
