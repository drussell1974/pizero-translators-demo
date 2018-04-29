.data
	string: .asciz "%d + %d = %d \n"
.text
.global main
main:
	PUSH {ip, lr}
	LDR R0, =string
	MOV R1, #65
	MOV R2, #44
	SUB R3, R1, R2
	BL printf
	POP {ip, pc}



