include 'emu8086.inc' 
.model small
.stack 100h
.data
 num1 db ?
 
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h 
    sub al,48
    mov num1,al 
    
    mov al,num1
    inc al
    mov num1,al 
    
    

    
    mov ah,2
    mov dl,num1 
    add dl,48
    int 21h
    
    
    mov ah,4ch
    main endp
end main
    
    
