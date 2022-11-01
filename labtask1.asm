.model small
.stack 100h
.data

var1 dw 0ah,0dh, "Hello world!",24h

.code
main proc
   
   mov ax,@data
   mov ds,ax  
   
   
   alu:
   mov ah,09h
   lea dx,var1
   int 21h
   
   jmp alu ;for contious printing
   
   mov ah,4ch
   int 21h 
    
    
    
    
    
    
    
    
    
    
    main endp
end main