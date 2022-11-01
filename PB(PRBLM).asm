


;using varibale


.model small
.stack 100h
.data 
a db 4
b db 2
.code
main proc 
     mov ax,@data
     mov dx,ax
     
     mov bl,a
     mov cl,b
     add bl,cl
     sub bl,cl
     mov a,bl
   
     
     mov dl,cl
    
    
   main endp
end main