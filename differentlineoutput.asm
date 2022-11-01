.model small
.stack 100h
.data 

var dw 0ah,0dh,"AB",24h
var2 dw 0ah,0dh,"AB",24h

.code
main proc
     
     mov ax,@data
     mov ds,ax
     
     mov ah,09h
     lea dx,var
     int 21h
      
     mov ah,09h
     lea dx,var
     int 21h
      
      
   
      mov ah,4ch
      int 21h
    
    
    
    
    
    
    
    main endp
end main