section .data
	
	; system call codes for Linux
	SYS_READ    equ 0
    	SYS_WRITE   equ 1
    	EXIT        equ 60
    	
    	; file descriptor values, for ebx (1st arg)
    	STDIN       equ 0  
    	STDOUT      equ 1
    	
	BUFLEN      equ 256	; max length of our string will be 256 characters
				
    	bufferstring	times BUFLEN db 0	; creating an empty buffer string, length 256
    						; db "bytes" times BUFLEN
    	
    	; setting up our prompt
    	prompt db "Please input a string: ", 0
    	promptlen equ $-prompt

section .text
    global _start

_start:
	mov eax, SYS_WRITE
	mov edi, STDOUT
	mov rsi, prompt
	mov edx, promptlen
	syscall
	
	; reading is identical to writing
	; specify file desriptor, buffer, and length
	mov eax, SYS_READ
	mov edi, STDIN
	mov rsi, bufferstring
	mov edx, BUFLEN
	syscall
	  
	mov eax, SYS_WRITE
	mov ebx, STDOUT
	mov rsi, bufferstring
	mov edx, BUFLEN
	syscall
	
	jmp .end

.end:
	mov eax, EXIT
	xor edi, edi
	syscall