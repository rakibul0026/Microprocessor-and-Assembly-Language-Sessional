;lowercase to Uppercase
.model small
.stack 100h
.code

main proc
    mov ah,1
    int 21h
    mov bl,al
    
    
    sub bl,32
    
    
    mov ah,2
    mov dl,bl 
    int 21h
    
    exit:
    main endp
end main
