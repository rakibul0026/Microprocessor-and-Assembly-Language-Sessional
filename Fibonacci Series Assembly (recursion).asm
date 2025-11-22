.model small
.stack 100h
.data
msg db "Fibonacci Series:$"

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Print title
    lea dx, msg
    mov ah, 9
    int 21h

    mov cx, 7       ; print first 7 Fibonacci numbers
    mov si, 0        ; argument to function (n)

next_term:
    mov ax, si       ; AX = n
    call fib         ; result in AL

    ; Convert number to ASCII
    add al, 48
    mov dl, al
    mov ah, 2
    int 21h

    ; Print space
    mov dl, ' '
    mov ah, 2
    int 21h

    inc si
    loop next_term

    mov ah, 4ch
    int 21h
main endp


; -------------------------------------------------
; RECURSIVE FIB FUNCTION
; Input : AX = n
; Output: AL = fib(n)
; -------------------------------------------------

fib proc
    cmp ax, 0
    je fib_zero
    cmp ax, 1
    je fib_one

    ; save n on stack
    push ax

    ; Calculate fib(n-1)
    dec ax
    call fib          ; AL = fib(n-1)
    mov bl, al        ; save fib(n-1) in BL

    ; restore n
    pop ax
    push ax

    ; Calculate fib(n-2)
    sub ax, 2
    call fib          ; AL = fib(n-2)

    ; restore n
    pop ax

    ; fib(n) = fib(n-1) + fib(n-2)
    add al, bl
    ret

fib_zero:
    mov al, 0
    ret

fib_one:
    mov al, 1
    ret

fib endp

end main
