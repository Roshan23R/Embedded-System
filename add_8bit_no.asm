.MODEL SMALL
.DATA
NUM1 DB 90H
NUM2 DB 80H
SUM DB ?
CARRY DB 00H
.CODE
START:MOV AX,@DATA
      MOV DS,AX
      MOV AL,NUM1
      ADD AL,NUM2
      JNC SKIP
      MOV CARRY,01H
  SKIP:MOV SUM,AL
      MOV AH,4CH
      INT 21H
      END START
      END CODE 
      END