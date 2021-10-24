//Write an arm program to evaluate 4 * x * x + 3 * x
//assume x is in r1 and store result in r0

start:

  MOV r1, #0x8 
	LDR	r2, =4			@give r2 the temporary value of 4
	MUL	r2, r1, r2		@multiply 4*x and give to r2
	MUL	r2, r1, r2		@multiply 4x by x and give to r2
	LDR	r3, =3			@set r3 temporarily to 3
	MUL	r3, r3, r1		@multiply 3*x
	ADD	r0, r3, r2		@add r2 to r3 and store in r0

stop:   B	stop
	.data
	.end
