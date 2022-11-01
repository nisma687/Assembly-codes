.model small
.stack 100h
.data  
.code
main proc
      
   
   mov bx,65
   mov cx,90
   BOOM:
   mov ah,02h
   mov dx,bx
   int 21h 
   
   inc bx 
   dec cx
   cmp cx,65
   je Exit
   jg BOOM
   
    
      
      Exit: 
      mov dx,"Z"
      int 21h
      mov ah,4ch
      int 21h
    
    
    
    
    
    
    main endp
end main