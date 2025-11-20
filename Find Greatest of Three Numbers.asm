include 'emu8086.inc'
.model small
.stack 100h 
.data
 num1 db 7
 num2 db 9
 num3 db 2
 max db ?
 
.code 
main proc
  mov ax,@data
  mov ds,ax
  
  mov al,num1
  mov max ,al
  
  mov al,num2
  cmp al,max
  jle skip1     ;JLE = Jump if Less or Equal
  mov max ,al 
  
  skip1:
  mov al,num3
  cmp al,max
  jle skip2     ;JLE = Jump if Less or Equal
  mov max,al 
  
  skip2: 
 PRINT "The greatest number is: "
  
 
  mov dl,max
  add dl,48 
  mov ah,2
  int 21h
  
  exit:
  mov ah,4ch
  main endp
  int 21h
  
end main
 
  
  
