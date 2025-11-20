
.model small
.stack 100h
.data 
  v1 db "The quatient is:$" 
   v2 db "The remainder is:$"

 dividend dw 17
 divisor db 5
 remainder db ?
 quatient db ?
 
 
 .code
 main proc 
    mov ax,@data
    mov ds,ax
   
    
    mov ax,dividend
    mov bl,divisor   ;divide
    div bl
    
    mov remainder ,ah
    mov quatient,al
    
    
    mov ah,2
    mov dl,10
    int 21h       ;newline
    mov dl,13
    int 21h  
    
    mov ah,9
    lea  dx,v1    ;show ->The quatient is:
    int 21h 
    
    
    
    mov ah,2
    mov dl,remainder  ;print remainder
    add dl,48
    int 21h 
    
    
     mov ah,2
    mov dl,10
    int 21h           ;newline
    mov dl,13
    int 21h  
    
    
   mov ah,9
   lea dx,v2        ;show ->The remainder is:
   int 21h
    
     mov ah,2
    mov dl,quatient
    add dl,48         ;print
    int 21h
    
    
    exit:
    mov ah,4ch
    main endp
 end main
    
            
   
   
