.global _start
.intel_syntax noprefix


_start:
	call main

	mov rax, 60
	mov rdi, 0
	syscall
