LDR		r1, =0xFEED1234
		MOV		r9, r1
		LDR		r0, =0xA1000400
		LDR		r2, =0x8
		LDR		r3, =0xF
		
		MOVS		r1, r1
while:
		MOV		r9, r9, ROR #28
		AND		r8, r9, r3
		
		MOVS		r8, r8
		CMP		r8, #9
		BHI		endif1
		ADD		r6, r8, #0x30
endif1:
		MOVS		r8, r8
		CMP		r8, #9
		BLS		endif2
		SUB		r6, r8, #0x9
		ADD		r6, r6, #0x40
endif2:
		STR		r6, [r0], #1
		ADD		r7, r7, #1
		SUB		r2, r2, #1
		MOVS		r2, r2
		CMP		r2, #0
		BEQ		skiploop
		B		while
skiploop:
