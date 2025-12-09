 include 'emu8086.inc' 
.model small
.stack 100h
.data
a db ?
b db ?
.code
main proc
    
    mov ax,@data
    mov ds,ax 
    
    print "Enter 1st Number:"
    
    mov ah,1
    int 21h
    sub al,48   ; convert Character to number
    mov a,al 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
     int 21h
    
   
   
   print "Enter 2nd Number:" 
   
    
   mov ah,1
   int 21h
   sub al,48
   mov b,al 
   
   
   
   
   
   
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    mov al,a
    
  
   add al,b  ;add two number
   
    ;mul al  ;multipication
   
   aam
   mov bx,ax
   
   
   
   
    print "the result is:" 
  
   
   mov ah,2
   mov dl,bh 
   add dl,48
   int 21h 
            
    mov ah,2
   mov dl,bl
     add dl,48 
   int 21h 
   
    
   
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
