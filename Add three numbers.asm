include 'emu8086.inc'
.model small
.stack 100h
.data

m1 db "Enter the first number :$"
m2 db "Enter the second number:$"  
m3 db "Enter the third number :$"

num1 db ?
num2 db ? 
num3 db ?
sum db ? 


.code
main proc
    mov ax,@data
    mov ds,ax
    
    
    
    
   ; print "Enter the first number :" 
   
    lea dx, m1
    mov ah, 9
    int 21h

   
    
    mov ah,1
    int 21h
    sub al,48
    mov num1,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13  
    int 21h 
    
    

    
  
              
               
    print "Enter the second number :"  
    
    mov ah ,1
    int 21h
    sub al,48
    mov num2,al  
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
   
            
   
   lea dx,m3
   mov ah,9
   int 21h 
   
   
    
   mov ah,1
   int 21h
   sub al,48 
   mov num3,al 
   
   mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov al,num1
    add al,num2
    add al,num3
      
    
    
    print "The result is :" 
    add al,48 
    
    mov ah,2
    mov dl,al 
    int 21h
    
    
    
    
   exit:
   mov ah,4ch
   main endp
end main
    
    
    

    
    

   
   
