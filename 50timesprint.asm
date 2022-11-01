.model small
.stack 100h
.data

.code
main proc
     
     mov cl,50
      mov ah,02h
     mov dx,'d'
     lalala:
    
     int 21h 
     cmp cl,0
     dec cl
   
     jg lalala
     jl exit
      
      
      
      
      exit:
      mov ah,4ch
      int 21h
    
    
    
    
    
    
    
    main endp
end main