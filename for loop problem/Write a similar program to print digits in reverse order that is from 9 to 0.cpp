.model small
.stack 100h
.code
main proc
    mov cx,10
    mov dx,57
    
    l1:
    mov ah ,2
    int 21h
    
    dec dx
    
    
    loop l1
    
    exit:
    mov ah,4ch
    main endp
end main
    
    
    
