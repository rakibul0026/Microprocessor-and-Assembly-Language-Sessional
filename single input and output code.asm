 .model small
 .stack 100h
 .code
 
 main proc
 
 mov ah,1   ;input function
 int 21h   
 mov bl,al 
 
 
 mov ah,2
 mov dl,10
 int 21h          ; newline  
 mov dl,13
 int 21h 
 
 
 mov ah,2
 mov dl,bl       ;output 
 int 21h
 
 exit:
 mov ah,4Ch
 int 21h
 
 main endp
 end main
 
 
