
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.MODEL SMALL
.STACK 100H 
.DATA        


A DB "NAME: Ali$" ;DECLAIREA
B DB "ID: 20-XXXXX-1$" ;DECLAIREB
C DB "Dept: CSE$" ;DECLAIREC
D DB "Course: COA$" ;DECLAIRED   
NEWLINE DB 0AH,0DH,"$"

.CODE    




MAIN PROC     
     MOV AX,@DATA 
    MOV DS,AX
                       
 MOV AH,9
    LEA DX,A
    INT 21H 
    
    MOV AH,9
    LEA DX,NEWLINE
    INT 21H 
    
    MOV AH,9
    LEA DX,B
    INT 21H 
    
    MOV AH,9
    LEA DX,NEWLINE
    INT 21H                     
    
    MOV AH,9
    LEA DX,c
    INT 21H 
    
    MOV AH,9
    LEA DX,NEWLINE
    INT 21H 
    
    MOV AH,9
    LEA DX,D
    INT 21H 
    
    MOV AH,9
    LEA DX,NEWLINE
    INT 21H
    
    
MAIN ENDP


END MAIN


ret




