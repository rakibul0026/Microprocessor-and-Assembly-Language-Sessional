.model small
.stack 100h
.code

main proc
    mov cx,26       ; total letters
    mov dl,'A'      ; start from A
    
alpha_loop:
    mov ah,2
    int 21h         ; print character
    
    inc dl          ; next letter
    loop alpha_loop

    mov ah,4ch
    int 21h
main endp
end main
