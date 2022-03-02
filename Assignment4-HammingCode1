LDR		r1, =0xAC
		
		AND		r2, r1, #0x1
		MOV		r0, r2, lsl #2
		
		AND		r2, r1, #0xE
		ORR		r0, r0, r2, lsl #3
		
		AND		r2, r1, #0xF0
		ORR		r0, r0, r2, lsl #4
		
		EOR		r2, r0, r0, LSR #2
		EOR		r2, r2, r2, LSR #4
		EOR		r2, r2, r2, LSR #8
		AND		r2, r2, #0x1
		ORR		r0, r0, r2
		
		EOR		r2, r0, r0, LSR #1
		EOR		r2, r2, r2, LSR #4
		EOR		r2, r2, r2, LSR #8
		AND		r2, r2, #0x2
		ORR		r0, r0, r2
		
		EOR		r2, r0, r0, LSR #1
		EOR		r2, r2, r2, LSR #2
		EOR		r2, r2, r2, LSR #8
		AND		r2, r2, #0x8
		ORR		r0, r0, r2
		
		EOR		r2, r0, r0, LSR #1
		EOR		r2, r2, r2, LSR #2
		EOR		r2, r2, r2, LSR #4
		AND		r2, r2, #0x80
		ORR		r0, r0, r2
