DATA SEGMENT
    s1 DB "RAKESH ROUSHAN'S ASSIGNMENT$"
DATA ENDS
CODE SEGMENT
    ASSUME CS:CODE,DS:DATA
BEGIN:MOV AX,DATA
      MOV DS,AX
      LEA DX,s1  ;load effective address
      MOV AH,09  ;used to display the string
      INT 21H 
      MOV AH,4CH
      INT 21H
      CODE ENDS
      END BEGIN