;BLOCK TRANSFER
DATA SEGMENT
    X1 EQU 2000H
    X2 EQU 3000H
    CNT EQU 50
DATA ENDS
CODE SEGMENT
ASSUME CS: CODE, DS: DATA, ES: EXTRA
START:
    MOV AX, DATA
    MOV DS, AX

    MOV ES, AX
    MOV SI,X1
    MOV DI,X2
    CLD
    MOV CX,CNT
    REP MOVSB
CODE ENDS