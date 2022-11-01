.model small
.stack 100h
.data 
var1 dw 0ah,0dh," Hello world ! "  ,24h
var2  dw 0ah,0dh," Bye world! "  ,24h
.code
main proc
    
      mov ax,@data
      mov ds,ax
      
            mov cl,5
      alu: 
      mov ah,09h
      lea dx,var1
      int 21h
 
      cmp cl,0;register ay value rekhe cmp korte hbe
      dec cl
       
      jne alu
    
      
     
      mov ah,09h
      lea dx,var2
      int 21h  
      
      mov ah,4ch
      int 21h
    
    
    
    main endp
end main