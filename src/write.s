.intel_syntax noprefix

.global write

write:
	endbr64
	
	mov rax, 1
	syscall

	ret
