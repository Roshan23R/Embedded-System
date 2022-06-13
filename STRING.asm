DATA SEGMENT
    MES DB "MY NAME IS"; 11 character string
    NAME1 DB "RAKESH ROUSHAN"; 14 characters
    MES1 DB 25 DUP (0)
DATA ENDS
CODE SEGMENT
    ASSUME CS: CODE, DS: DATA, ES: DATA

START:  MOV AX, DATA
    MOV DS, AX
    MOV ES, AX
    LEA SI, MES; Point SI to Source String
    LEA DI, MES1; Point DI to Destination String
    MOV CX, 11; move 11 to CX Counter Register
    CLD; Clear DF to auto increment SI and DI
REP MOVSB  
    LEA SI, NAME1
    MOV CX, 14
    CLD
REP MOVSB
CODE ENDS