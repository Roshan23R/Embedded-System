     DATA SEGMENT 
        A DW 9223H
        B DW 9341H
        SUM DW ? 
        CARRY DB ?
     DATA ENDS
     CODE SEGMENT 
        ASSUME CS:CODE DS:DATA
     START: MOV AX,DATA
            MOV DS,AX
            MOV AX,A
            MOV BX,B 
            ADD AX,BX
            JNC SKIP
            MOV CARRY,01H
            SKIP:MOV SUM,AX
            MOV AH,4CH
            INT 21H
            CODE ENDS
     END START
             