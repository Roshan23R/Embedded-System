MOV SI,1200H
MOV AX,[SI]
MOV BX,[SI+2]
MUL BX
MOV [SI+4],AX
MOV [SI+6],DX
HLT