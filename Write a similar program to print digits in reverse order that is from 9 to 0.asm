.model small
.stack 100h
.code

main proc
    mov cx,10       ; total 10 digits
    mov dl, '9'     ; start from '9'
    
print_loop:
    mov ah,2
    int 21h         ; print digit
    
    dec dl          ; go to next digit
    loop print_loop ; decreases cx and loops

    mov ah,4ch
    int 21h
main endp
end main
