.model small
.stack 100h
.code

main proc
    mov ah,1
    int 21h   ;input 1st number
    mov bl,al
    
    
    mov ah,1
    int 21h       ;input 1st number
    mov bh,al
    
    
    xchg bl,bh   ;swap
    
    mov ah,2
    mov dl,10
    int 21h     ;newline
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    
    mov ah,2
    mov dl,bh
    int 21h
    
    exit:
     mov ah,4ch
     main endp
end main
