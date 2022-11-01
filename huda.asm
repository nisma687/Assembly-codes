.model small
.stack 100h  
.data
   
   string db 0ah,0dh,"Please give an input" ,24h
   


.code

main proc
         
         mov bx,@data
         mov ds,bx   ;jekono register ay rakha jay expect ax for data
         
         mov ah,09h      ;ah ay sob dhoroner instructions deya hoy
         lea dx,string    ;lea for to load the string or values from ds
         int 21h
                 
         mov ah,01h
         int 21h
         
         mov cl,al
         
         
         
         
    
    
    
    
    main endp
end main
