global _start

section .text

_start:	mov rax, 60 ; 60 is the system exit call for Linux
	mov rdi, 0
	syscall