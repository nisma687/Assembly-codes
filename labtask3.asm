.model small
.stack 100h
.data 
var1  dw 0ah,0dh,"ITS A POSITIVE NUMBER",24h

var2  dw 0ah,0dh,"ITS A NEGATIVE NUMBER",24h 

var3 dw 0ah,0dh,"GIVE A INPUT :"   ,24h
.code
main proc 
      
      mov ax,@data
      mov ds,ax
      
      mov ah,09h
      lea dx,var3
      int 21h
      mov ah,01h
      int 21h
      
      cmp al,30h
      
      jg  Positive
      jl  Negative
      
       Positive:
      mov ah,09h
      lea dx,var1
      int 21h 
      jmp Exit
      Negative:
      mov ah,09h
      lea dx,var2
      int 21h 
       jmp Exit
    
       Exit:
        mov ah,4ch
    int 21h
    main endp
end main
    
  