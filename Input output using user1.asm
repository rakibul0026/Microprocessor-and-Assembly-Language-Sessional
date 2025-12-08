include 'emu8086.inc'
.model small
.stack 100h
.data

m1 db "Enter the first number :"
m2 db "Enter the second number:"

num1 db ?
num2 db ?

.code
main proc
    mov ax,@data
    mov ds,ax
    
    
    
    
    print "Enter the first number :" 
    
    mov ah,1
    int 21h
    mov num1,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13  
    int 21h 
    
    
    mov ah,2
    mov dl,num1
    int 21h 
    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13  
    int 21h 
              
               
    print "Enter the second number :"  
    
    mov ah ,1
    int 21h
    mov num2,al  
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,num2 
    int 21h
    
    
    
    
    
   exit:
   main endp
end main
    
    
    

    
    

   
   
