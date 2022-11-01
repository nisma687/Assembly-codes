.model small
.stack 100h
.data
   
   string dw "Nisma Hossain ",0ah,0dh  "$"
   string2 db "20- 41982-1",0ah,0dh,24h

 
.code

main proc
    
      mov ax,@data
      mov ds,ax   
      
      
      mov ah,09h
      lea dx,string
      int 21h 
      
      mov ah,01h
      int 21h
      
      mov bl,al
      mov ah,02h 
      mov dl,02h
      int 21h
      
        
      mov ah,4ch
      int 21h
    
  main endp
  end main  
    












