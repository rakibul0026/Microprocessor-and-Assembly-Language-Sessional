;Rewrite alphabet program using loopnz
.model small
.stack 100h
.code

main proc
    mov cx,26
    mov dl,'A'

alpha_loop:
    mov ah,2
    int 21h         ; print A-Z
    
    inc dl
    cmp dl,0        ; make ZF = 0 (so LOOPNZ works)
    loopnz alpha_loop

    mov ah,4ch
    int 21h
main endp
end main
