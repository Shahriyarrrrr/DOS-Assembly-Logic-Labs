.MODEL SMALL
.STACK 100H
.DATA
    MSG1 DB "INPUT:$"
    MSG2 DB 10,13,"OUTPUT:$"
.CODE
MAIN PROC
    MOV AX,DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    MOV CX,8
    MOV BL,0
INPUT_LOOP:
    MOV AH,1
    INT 21H
    SUB AL,'0'
    SHL BL,1
    OR  BL,AL
    LOOP INPUT_LOOP
    
    OR BL,04H
    
    MOV AH,9
    LEA DX,MSG2
    INT 21H
    
    MOV CX,8
OUTPUT_LOOP:
    SHL BL,1
    JC  ONE
    MOV DL,'0'
    JMP DISPLAY
ONE:
    MOV DL,'1'
DISPLAY:
    MOV AH,2
    INT 21H
    LOOP OUTPUT_LOOP
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
