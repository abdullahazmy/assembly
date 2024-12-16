org 100h

.data
    m1 dw "Enter the number: $"
    m2 dw 10,13, "Please set loop counter: $"
    m3 dw 10,13, "$" 


.code

    ; Print m1
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
    
    
    ;Loop counter
    mov ah, 01
    int 21h
    mov cl, al
    sub cl, '0'
    
    ;print new line
    mov ah, 09
    lea dx, m3
    int 21h
    
begin:
    
    mov dl, bl
    add dl, '0'
    
    ; print dl
    mov ah, 02
    int 21h
    
    ; inc bl
    inc bl
    
    ; print new line
    mov ah, 09
    lea dx, m3
    int 21h

loop begin
    
