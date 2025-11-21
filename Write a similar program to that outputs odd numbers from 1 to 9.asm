.model small
.stack 100h
.code

main proc
    mov cx,5           ; 5 odd numbers
    mov dl,'1'         ; first odd number
    
odd_loop:
    mov ah,2
    int 21h            ; print digit
    
    add dl,2           ; next odd number (skip 2)
    loop odd_loop

    mov ah,4ch
    int 21h
main endp
end main
