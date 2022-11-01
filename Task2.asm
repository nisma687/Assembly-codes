.Model small
.stack 100h
.data
   
   string1 Dw 0Ah,0dh,"input 1 :", 24h
   string2 dw 0ah,0dh,"input 2 :" ,24h
   string3 dw 0ah,0dh,"output :",24h  
   


.code
 Main proc
    
      mov bx,@data
      mov ds,bx
      
      lea dx,string1
      mov ah,09h
      int 21h
      
      mov ah,01h
      int 21h 
      
      mov cl,al
      
      lea dx,string2
      mov ah,09h
      int 21h
      
      mov ah,01h
      int 21h 
      
      mov ch,al
      
      lea dx,string3
      mov ah,09h
      int 21h
      
      mov dl,cl
      mov ah,02h
      int 21h 
      mov dl,ch
      int 21h
      
      
      
    
    
    
    
    main endp
 end main











