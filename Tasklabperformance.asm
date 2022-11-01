.model small
.stack 100h
.data
    
    msg1 dw 0ah,0dh,"Enter 1st number:" ,24h
    msg2 dw 0ah,0dh,"Enter 2nd number:" ,24h
    msg3 dw 0ah,0dh,"you have entered " ,24h
    msg4 dw " and ",24h    

.code

main proc 
    
      mov bx,@data
      mov ds,bx
      
      
      mov ah,09h
      lea dx,msg1
      int 21h
      
      mov ah,01h
      int 21h
      
      mov cl,al
   
      
      mov ah,09h
      lea dx,msg2
      int 21h
      
      mov ah,01h
      int 21h
      
      mov bl,al
      mov ah,09h
      lea dx,msg3
      int 21h
       
      mov ah,02h 
      mov dl,cl
      int 21h
       
      mov ah,09h
      lea dx,msg4 
      int 21h 
            
      mov ah,02h         
      mov dl,bl
      int 21h
      
      
      
      
    
    
    
       mov ah,4ch
       int 21h
    
    main endp
end main