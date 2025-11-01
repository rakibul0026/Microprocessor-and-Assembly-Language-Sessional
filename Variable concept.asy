.model small
.stack 100h
.data
msg  db 3 
msg1 db ?
.code

main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 2        ;print Function
    add msg, 48       ; Convert number 3 ? ASCII '3'
    mov dl, msg
    int 21h
             
    mov ah, 1         ; Input a character
    int 21h
    mov msg1, al
    
    mov ah, 2         ; New line
    mov dl, 13        ; CR
    int 21h
    mov dl, 10        ; LF
    int 21h
    
    mov ah, 2         ; Display input again
    mov dl, msg1
    int 21h
    
   exit:     
    mov ah, 4ch       ; Exit to DOS
    int 21h
main endp
end main
