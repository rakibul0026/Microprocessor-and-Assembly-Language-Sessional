;Rewrite alphabet program using  loopz
.model small
.stack 100h
.code

main proc
    mov cx,26
    mov dl,'A'

alpha_loop:
    mov ah,2
    int 21h
    
    inc dl
    cmp dl,dl       ; ZF = 1 (so LOOPZ works)
    loopz alpha_loop

    mov ah,4ch
    int 21h
main endp
end main
