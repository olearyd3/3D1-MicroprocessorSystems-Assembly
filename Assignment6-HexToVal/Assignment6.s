LDR r0, =TestStr  
	LDR r3, =0x10000000 
	LDR r8, =8 

loop: 
	LDRB r7, [r0], #1
	CMP r7, #0
	BNE branch 
	ADD r9,r9,#1 
	
branch:
	SUB r8,r8,#1 
	CMP r8, #0 
	BNE loop
	LDRB r1, [r0], #-8
	
loop2: 
	LDRB r1, [r0], #1
	MOV r5, r1
	MOV r2, r5, LSR #4
	CMP r2, #3 
	BNE endif
	SUB r1, r1, #0x30
	B skip
	
endif: 
	CMP r2, #6 
	BNE endif2 
	SUB r1, r1, #0x60 
	ADD r1, r1, #0x9 
	B skip
	
endif2:
	CMP r2, #4 
	BNE endif3 
	SUB r1, r1, #0x40
	ADD r1, r1, #0x9
	B skip
	
endif3:
skip: 
	MUL r4, r1, r3
	MOV r3, r3, LSR #4 
	ADD r6, r6, r4 
	
	CMP r1, #0 
	BNE loop2 
	
	CMP r9, #0 
	BEQ branch2
	
while:
	BEQ endwh 
	MOV r6, r6, LSR #4
	SUB r9, r9, #1 
	CMP r9, #0
	B	while 
	
endwh:
branch2:
	MOV r0, r6
