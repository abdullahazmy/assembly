org 100h

.data
    m1 dw "Enter first num: $"
    m2 dw 10,13, "Enter Second number: $"
    m3 dw 10,13, "The result is: $"
    
.code

    ; Display m1
    mov ah, 09
    lea dx, m1
    int 21h
    
    ; Input 1
    mov ah, 01
    int 21h
    mov bl, al
    sub bl, '0'
    
    
    ;Display m2
    mov ah, 09
    lea dx, m2
    int 21h
     
     
    
    ; Input 2
    mov ah, 01
    int 21h
    mov cl, al
    sub cl, '0'
     
    
    ;Display m3
    mov ah, 09
    lea dx, m3
    int 21h
    
    
    ;Apply Div 
    mov ah, 00
    mov al, bl
    div cl
    
    
    
    ; Display Output
    mov dl, al 
    add dl, '0'
    mov ah, 02
    int 21h
    
