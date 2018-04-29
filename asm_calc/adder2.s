.data
	string: .asciz "%d + %d = %d \n"
	prompt1: .asciz "Enter a number: "
	prompt2: .asciz "Enter another number: "
	num1: .word 0
	num2: .word 0
	scan: .asciz "%d"
.text
.global main

main:
	PUSH {ip, lr}
	LDR R0, =prompt1
	BL printf
	LDR R1, =num1
	LDR R0, =scan
	BL scanf
	LDR r0, =prompt2
	BL printf
	LDR R1, =num2
	LDR R0, =scan
	BL scanf
	LDR R14, =num1
	LDR R1, [R14]
	LDR R14, =num2
	LDR R2, [R14]
	SUB R3, R1, R2
	LDR R0, =string
	BL printf

	MOV r0, #0
	POP {ip, pc}



