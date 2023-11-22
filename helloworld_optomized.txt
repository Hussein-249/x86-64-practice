section .data
	message db 'Hello World!!!!!!!!', 0 ; string we want to print
	
	SYS_WRITE	equ 1
	STDOUT		equ 1
	EXIT		equ 60
	
character:
	len equ $-message	; the $ character allows us to get the length of the string
		
section .text			
	global _start
	
_start:	
	mov eax, SYS_WRITE		; sys_write on Linux x86-64
	mov ebx, STDOUT		; file descriptor (where do we want to output? stdout)
				; rdi is the first argument for our syscall
	
	mov rsi, message	; move the address of the string into rsi
				; rsi is the second argument of our syscall
				
	mov edx, len		; move length of message as second argument.
				; this is so we know how many bytes to print.
	syscall
	
	jmp end
	
end:
	mov eax, EXIT		; exit on Linux x86-64
	xor edi, edi		; more efficient than mov rdi, 0
	syscall