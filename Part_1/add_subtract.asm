section .data
    	prompt db 'Enter command: ', 0
    	promptLen equ $-prompt
    	addCmd db 'add', 0
    	subCmd db 'subtract', 0
    	EXIT	equ 60

section .bss
   	command resb 16

section .text
   	global _start
 
_start:
        mov eax, 4
        mov ebx, 1
        mov ecx, prompt
        mov edx, promptLen
        syscall

        mov eax, 3
        mov ebx, 0
        mov ecx, command
        mov edx, 16
        syscall

        ; compare the command to 'add'
        mov eax, command
        cmp eax, addCmd
        je add

        ; compare the command to 'subtract'
        cmp eax, subCmd
        je subtract

        jmp end

add:
	call addnumbers

addnumbers:
	push rbp	; pushing rbp to the top of the stack
	mov rbp, rsp	; rbp now points to the top of the stack
	
	add eax, ebx	; adding the ebx to the contents of eax
	
	mov rsp, rbp
	pop rbp		; popping rbp from the stack
	ret 		; return :)

subtract:
	call subnumbers

subnumbers:
	push rbp	; pushing rbp to the top of the stack
	mov rbp, rsp	; rbp now points to the top of the stack
	
	sub eax, ebx	; sub
	
	mov rsp, rbp
	pop rbp		; popping rbp from the stack
	ret 		; return :)

end:
	mov edi, eax		
	mov eax, EXIT		
	syscall