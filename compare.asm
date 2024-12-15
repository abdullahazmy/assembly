org 100h


.data
    m1 dw "Please Enter the number: $"
    m2 dw 10,13, "Above$"
    m3 dw 10,13, "Below$"
    m4 dw 10,13, "Equal$"
    

.code


    ;Display m1
    mov ah,09
    lea dx, m1
    int 21h
    
    
    ; Take the input
    mov ah, 01
    int 21h
    mov bl, al
    sub bl, '0'
    
    ; Compare
    cmp bl, 5
    
    
    ja above 
    je equal
    jb below
    
    
above:
    ;Display m2
    mov ah, 09
    lea dx, m2
    int 21h
    
    jmp finish
    

equal:
    ;Display m4
    mov ah, 09
    lea dx, m4
    int 21h
     
    jmp finish
    
below:
    ;Display m3
    mov ah, 09
    lea dx, m3
    int 21h
    
    jmp finish
    

finish:
    ; Exit code
    mov ah, 00    
    
    
