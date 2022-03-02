LDR		R0, =0x852
		MOV		R11, R0
		LDR		R1, =0xAC
		
		AND		R2, R1, #0x1
		MOV		R11, R2, LSL #2
		
		AND		R2, R1, #0xE
		ORR		R11, R11, R2, LSL #3
		
		AND		R2, R1, #0xF0
		ORR		R11, R11, R2, LSL #4
		
		EOR		R2, R11, R11, LSR #2
		EOR		R2, R2, R2, LSR #4
		EOR		R2, R2, R2, LSR #8
		AND		R2, R2, #0x1
		ORR		R11, R11, R2
		
		EOR		R2, R11, R11, LSR #1
		EOR		R2, R2, R2, LSR #4
		EOR		R2, R2, R2, LSR #8
		AND		R2, R2, #0x2
		ORR		R11, R11, R2
		
		EOR		R2, R0, R0, LSR #1
		EOR		R2, R2, R2, LSR #2
		EOR		R2, R2, R2, LSR #8
		AND		R2, R2, #0x8
		ORR		R11, R11, R2
		
		EOR		R2, R11, R11, LSR #1
		EOR		R2, R2, R2, LSR #2
		EOR		R2, R2, R2, LSR #4
		AND		R2, R2, #0x80
		ORR		R11, R11, R2
		
		EOR		R11, R11, #0x100
		
		LDR		R3, =0XFFFFFF74
		AND		R3, R11, R3
		
		EOR		R2, R3, R3, LSR #2
		EOR		R2, R2, R2, LSR #4
		EOR		R2, R2, R2, LSR #8
		AND		R2, R2, #0x1
		ORR		R3, R3, R2
		
		EOR		R2, R3, R3, LSR #1
		EOR		R2, R2, R2, LSR #4
		EOR		R2, R2, R2, LSR #8
		AND		R2, R2, #0x2
		ORR		R3, R3, R2
		
		EOR		R2, R3, R3, LSR #1
		EOR		R2, R2, R2, LSR #2
		EOR		R2, R2, R2, LSR #8
		AND		R2, R2, #0x8
		ORR		R3, R3, R2
		
		EOR		R2, R3, R3, LSR #1
		EOR		R2, R2, R2, LSR #2
		EOR		R2, R2, R2, LSR #4
		AND		R2, R2, #0x80
		ORR		R3, R3, R2
		
		EOR		R1, R0, R3
		
		LDR		R4, =0X80
		AND		R4, R4, R1
		MOV		R4, R4, LSR #4
		
		LDR		R5, =0X8
		AND		R5, R5, R1
		MOV		R5, R5, LSR #1
		
		LDR		R6, =0X3
		AND		R6, R6, R1
		
		ADD		R1, R4, R5
		ADD		R1, R1, R6
		
		SUB		R1, R1, #1
		
		LDR		R7, =0X1
		MOV		R7, R7, LSL R1
		
		EOR		R8, R0, R7
		
		MOV		R8, R8, LSR #2
		
		LDR		R9, =0x1
		AND		R9, R9, R8
		
		MOV		R8, R8, LSR #2
		
		LDR		R10, =0x7
		AND		R10, R10, R8
		MOV		R10, R10, LSL #1
		
		MOV		R8, R8, LSR #4
		
		MOV		R8, R8, LSL #4
		
		ADD		R8, R8, R10
		ADD		R8, R8, R9
		
		MOV		R0, R8
