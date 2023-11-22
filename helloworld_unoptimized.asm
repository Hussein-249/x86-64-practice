section .data
	message db 'Hello World! This is the x86 tutorial!', 0 ; string we want to print
	
character:
	len equ $-message	; the $ character allows us to get the length of the string
		
section .text			
	global _start
	
_start:	
	mov rax, 1		; sys_write on Linux x86-64
	mov rdi, 1		; file descriptor (where do we want to output? stdout)
				; rdi is the first argument for our syscall
	
	mov rsi, message	; move the address of the string into rsi
				; rsi is the second argument of our syscall
				
	mov rdx, len		; move length of message as second argument.
				; this is so we know how many bytes to print.
	syscall

	mov rax, 60		; exit on Linux x86-64
	xor rdi, rdi		; more efficient than mov rdi, 0
	syscall