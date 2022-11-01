.model small
.stack 100h
.data  


.code

 main proc
    
       mov ah,01h
       int 21h
       mov cl,al
       sub cl,30h
       
       mov ah,01h
       int 21h
       mov bl,al
       sub bl,30h
       
       add cl,bl
       mov dl,cl 
       add dl,30h 
       inc dl
       ;add dl,1 
       dec dl
       mov ah,02h
       int 21h









main endp
end main