.model small 
.stack 100h
.data 

.code 
main proc
    mov bh,5
    mov bl,4
    add bl,bh
    
    add bl,48
    
    
    mov dl,bl
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    
  main endp
end main
