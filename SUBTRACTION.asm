
MOV AX,[1000H]
MOV BX,[1002H]
MOV CL,00H
SUB AX,BX
JNC JAMP
INC CL
NOT AX
ADD AX,0001H
JAMP:
MOV [1004H],AX
MOV [1006H],CL
HLT
