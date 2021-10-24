start:

	LDR	R7, ='1'
	LDR	R6, ='0'
	LDR	R5, ='3'
	LDR	R4, ='4'
	LDR	R3, ='2'
	LDR	R2, ='7'
	LDR	R1, ='9'
	
	// subtract 30 if numeric
	SUB r7, #0x30
	SUB r6, #0x30
	SUB r5, #0x30
	SUB r4, #0x30
	SUB r3, #0x30
	SUB r2, #0x30
	SUB r1, #0x30
	
	// multiply each R value by the corresponding amount relevant to its slot
	LDR r8, =1000000
	MUL r7, r7, r8
	
	LDR r8, =100000
	MUL r6, r6, r8
	
	LDR r8, =10000
	MUL r5, r5, r8
	
	LDR r8, =1000
	MUL r4, r4, r8
	
	LDR r8, =100
	MUL r3, r3, r8
	
	LDR r8, =10
	MUL r2, r2, r8
	
	// add all of the values and assign to R0
	ADD r7, r7, r6
	ADD r7, r7, r5
	ADD r7, r7, r4
	ADD r7, r7, r3
	ADD r7, r7, r2
	ADD r0, r7, r1

stop:   B	stop
	.data
	.end
