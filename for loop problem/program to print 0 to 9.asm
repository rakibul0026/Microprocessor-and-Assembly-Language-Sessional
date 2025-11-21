.model small
.stack 100h
.data
.code

main proc
    mov cx,10   ;count
    mov dx,48   ;print->0123456789  here 48 because it start 1.....
    
    l1:
    mov ah,2
    int 21h
    
    ;add dx,1  ;increment loop  
    inc dx
    
    loop l1   ;loop
    mov ah,4ch
    int 21h
    
    main endp
end main
