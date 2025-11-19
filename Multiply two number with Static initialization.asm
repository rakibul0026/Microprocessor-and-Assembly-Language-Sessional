.model small
.stack 100h
.data

 v1 db 2
 v2 db 5 
 result db ?
 
 .code
 
main proc   
    mov al,v1
    mov bl,v2  
    
    mul bl
    
   mov result,al
    
    add al,48
    mov ah,2
    mov dl,al
    int 21h
    
    exit:
    mov ah,4ch
    main endp
end main
    
