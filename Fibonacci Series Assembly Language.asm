
;Fibonacci Series Assembly Language
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

    mov cx, 7       ; print first 10 Fibonacci numbers
    mov si, 0        ; argument to function (n)

next_term:
    mov ax, si       ; AX = n
    call fib         ; returns nth Fibonacci ? AL

    ; Convert AL to ASCII and print
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

    ; Exit
    mov ah, 4ch
    int 21h
main endp


; -------------------------------------------------
; FUNCTION: fib(n)
; Input : AX = n
; Output: AL = Fibonacci(n)
; -------------------------------------------------
fib proc
    cmp ax, 0
    je fib_zero

    cmp ax, 1
    je fib_one

    mov bx, ax       ; BX = n
    mov al, 0        ; fib(0)
    mov ah, 1        ; fib(1)

f_loop:
    dec bx
    cmp bx, 1
    je f_end

    add al, ah       ; next = a + b
    xchg al, ah      ; shift values
    jmp f_loop

f_end:
    add al, ah       ; final Fibonacci number
    ret

fib_zero:
    mov al, 0
    ret

fib_one:
    mov al, 1
    ret

fib endp

end main

