.model small
.stack 100h
.data
num1 db ?      ; First number (user input)
num2 db ?      ; Second number (user input)
result db ?    ; Result after multiplication
.code

main proc
    mov ax, @data
    mov ds, ax

   
    ; Input first number
   
    mov ah, 1       ; input char
    int 21h
    sub al, 48      ; convert ASCII to number
    mov num1, al

    
    ; Input second number
   
    mov ah, 1
    int 21h
    sub al, 48
    mov num2, al

   
    ; Load numbers for multiply
    
    mov al, num1
    mov bl, num2

    
    ; Multiply (AL * BL ? AX)
    
    mul bl

    ; Store only low byte (valid for 0–81)
    mov result, al

   
    ; Display result (single digit only)
   
    add al, 48      ; convert to ASCII
    mov ah, 2
    mov dl, al
    int 21h

exit:
    mov ah, 4Ch
    int 21h
main endp
end main
