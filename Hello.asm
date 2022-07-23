.model large

DATA SEGMENT 
   myName db 'Hello word! $'
DATA ENDS

STK SEGMENT STACK
    db 128('')
STK ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA, SS:STK
    START:
        mov ax,DATA
        mov DS, ax
        
        lea dx,myName
        mov ah, 9
        int 21h
        
        mov ah, 4ch
        int 21h
        
        ret
CODE ENDS
end START
    
end


