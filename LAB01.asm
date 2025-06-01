.MODEL SMALL
.STACK 100H

.DATA
    PROMPT_MSG      DB  'Enter a hex byte: $'
    OUTPUT_MSG      DB  10, 13, 'Result after clearing MSB: $'
    INPUT_BYTE      DB  ?
    RESULT_BYTE     DB  ?

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    LEA DX, PROMPT_MSG
    MOV AH, 9
    INT 21H

    MOV AH, 1
    INT 21H
    CALL ASCII_TO_HEX
    MOV BH, AL

    MOV AH, 1
    INT 21H
    CALL ASCII_TO_HEX
    MOV BL, AL

    SHL BH, 4
    OR  BL, BH
    MOV INPUT_BYTE, BL

    MOV AL, INPUT_BYTE
    AND AL, 7FH
    MOV RESULT_BYTE, AL

    LEA DX, OUTPUT_MSG
    MOV AH, 9
    INT 21H

    MOV AL, RESULT_BYTE
    CALL PRINT_HEX_BYTE

    MOV AH, 4CH
    INT 21H
MAIN ENDP

ASCII_TO_HEX PROC
    CMP AL, '9'
    JLE IS_DIGIT
    SUB AL, 7
IS_DIGIT:
    SUB AL, 30H
    RET
ASCII_TO_HEX ENDP

PRINT_HEX_BYTE PROC
    PUSH AX

    MOV CL, 4
    MOV DL, AL
    SHR DL, CL
    CALL HEX_TO_ASCII_CHAR
    MOV AH, 2
    INT 21H

    POP AX
    MOV DL, AL
    AND DL, 0FH
    CALL HEX_TO_ASCII_CHAR
    MOV AH, 2
    INT 21H
    RET
PRINT_HEX_BYTE ENDP

HEX_TO_ASCII_CHAR PROC
    CMP DL, 9
    JLE DIGIT_VAL
    ADD DL, 7
DIGIT_VAL:
    ADD DL, 30H
    RET
HEX_TO_ASCII_CHAR ENDP

END MAIN





