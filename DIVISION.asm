 MOV SI,1100H
 MOV AX,[SI]
 MOV DX,[SI+2]
 MOV BX,[SI+4]
 DIV BX
 MOV [SI+6],AX
 MOV [SI+8],DX
 HLT