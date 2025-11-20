.model small
.stack 100h
.code

main proc
    mov ah,2
    jmp skipd
    
    mov dl,'a'
    int 21h
    
    skipd:
    mov dl,'e'
    int 21h
    
    main endp
end main
