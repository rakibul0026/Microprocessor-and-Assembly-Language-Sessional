.model small
.stack 100h
.data
a db ?
b db ?

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Input first number
    mov ah, 1
    int 21h
    sub al, 48
    mov a, al

    ; Input second number
    mov ah, 1
    int 21h
    sub al, 48
    mov b, al

    ; Division
    mov al, a       ; numerator
    xor ah, ah      ; clear AH
    div b           ; divide AX by b -> quotient in AL, remainder in AH

    ; Print quotient
    add al, 48      ; convert to ASCII
    mov dl, al
    mov ah, 2
    int 21h

    ; Print remainder (optional)
    ; add ah, 48
    ; mov dl, ah
    ; mov ah, 2
    ; int 21h

   exit:
    mov ah, 4Ch
    int 21h

main endp
end main
