
.model small
.stack 100h
.data

str1  db 10,13, "Input1: $"
str2  db 10,13, "Input2: $"
str3 db 10,13, "Output: $"

.code

 Main Proc 
    
    mov ax,@data
    mov ds,ax
    
    lea dx,str1
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov bl, al
    lea dx, str2
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h   
    mov cl,al
    
    lea dx,str3
    mov ah,9 
    int 21h
    
    mov ah,2
    mov dl, bl
    int 21h 
   
    mov ah,2
    mov dl, cl
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
 
 End main
    

