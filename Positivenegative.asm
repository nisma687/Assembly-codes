.model small
.stack 100h

.data
     
     input dw 0ah,0dh,"Please enter a number : ", 24h 
     posi db 0ah,0dh,"its a positive number ", 24h
     nega db 0ah,0dh,"its a negative number " ,24h 
     zero db 0ah,0dh,"its a zero  " ,24h
     
     var db ?


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
            
            cmp var,30h
            
            je Zer
            jg Positive
            jl Negative
            
             Positive:
             
            mov ah,09h
            lea dx,posi
            int 21h
             jmp Exit 
            
               Negative:
            mov ah,09h
            lea dx,nega
            int 21h
             jmp Exit
             Zer:
            mov ah,09h
            lea dx,zero
            int 21h 
            jmp Exit
             
              Exit:
             mov ah,4ch
             int 21h
    
    main endp


end main