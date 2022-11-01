.model small
.stack 100h

.data
     
     input dw 0ah,0dh,"Please enter a number : ", 24h 
     great db 0ah,0dh,"greater than 7 ", 24h
     less db 0ah,0dh,"less than 7 " ,24h 
     equal db 0ah,0dh,"Equal to 7  " ,24h
     
     var db ?           
     var2 equ 37h


.code



main proc
            mov bx,@data
            mov ds,bx
            
            mov ah,09h
            lea dx,input
            int 21h
               
            mov ah,01h
          
            int 21h ;input done
            mov var,al
            
            cmp var,var2 
            
            
            
            
            je Eq
            jg  Grea
            jl Le
            
            Grea:
             
            mov ah,09h
            lea dx,great
            int 21h
             jmp Exit 
            
              Le:
            mov ah,09h
            lea dx,less
            int 21h
             jmp Exit
             
             Eq:
            mov ah,09h
            lea dx,equal
            int 21h 
            jmp Exit
             
              Exit:
             mov ah,4ch
             int 21h
    
    main endp


end main