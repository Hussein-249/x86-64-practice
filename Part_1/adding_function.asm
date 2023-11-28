section .data
	EXIT		equ 60
			
section .text			
	global _start
	
addnumbers:
	push rbp	; pushing rbp to the top of the stack
	mov rbp, rsp	; rbp now points to the top of the stack
	
	add eax, ebx	; adding the ebx to the contents of eax
	dec eax		; decrementing eax by 1
	
	mov rsp, rbp
	pop rbp		; popping rbp from the stack
	ret 		; return :)

_start:	

	mov eax, 10	; moving 10 and 21 as "arguments"
	mov ebx, 21
	call addnumbers		; calling the function we defined above
	jmp end
	
end:
	mov edi, eax		; mov the result of addnumbers to view it (as exit code), expect 30 as answer
	mov eax, EXIT		
	syscall