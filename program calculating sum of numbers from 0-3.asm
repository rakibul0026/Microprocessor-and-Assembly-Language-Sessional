.model small
.stack 100h
.data
    sum db 0        ; store the final sum
.code

main proc
    mov ax, @data
    mov ds, ax

    mov cx, 4       ; loop 4 times (0,1,2,3)
    mov bl, 0       ; counter = 0
    mov al, 0       ; sum register

sum_loop:
    add al, bl      ; al = al + bl
    inc bl          ; bl = bl + 1
    loop sum_loop

    add al, 48      ; convert to ASCII
    mov dl, al
    mov ah, 2
    int 21h         ; print sum

    mov ah, 4Ch
    int 21h
main endp
end main
