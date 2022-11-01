.model small
.stack 100h
.data
.code
main proc
       
       
       
       mov bx,255
       mov cx,0
       
        
       paratha: 
       mov ah,02h
       mov dx,cx
       int 21h
       inc cx
       dec bx
       cmp bx,0
       
       je Exit
       jg paratha
       
       
       Exit:
       mov ah,4ch
       int 21h
    
    
    
    
    
    main endp
end main