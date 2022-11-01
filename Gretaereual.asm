.model small
.stack 100h
.data  
var1 dw 0ah,0dh,"Enter a number :" ,24h
var2 dw 0ah,0dh,"Greater than 5 ",24h
var3 dw 0ah,0dh,"less than 5 ",24h
  var4 dw 0ah,0dh,"equal to 5 ",24h
.code
main proc
    
      mov ax,@data
      mov ds,ax
      
        mov ah,09h
        lea dx,var1
        int 21h 
        mov ah,01h
        int 21h
       
       cmp al,35h
       je EQUAL
       jl Less
       jg Greater
       
       
       EQUAL:
         mov ah,09h
        lea dx,var4
        int 21h 
        jmp Exit  
     Less:
         mov ah,09h
        lea dx,var3
        int 21h
        jmp Exit 
      
     Greater:
         mov ah,09h
        lea dx,var2
        int 21h
          jmp Exit  
    
    
      
      Exit:
      mov ah,4ch
      int 21h
    
    
    
    
    
    
    main endp
end main