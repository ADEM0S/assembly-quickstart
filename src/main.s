.intel_syntax noprefix

.global main

.extern to_analyze
.extern write

main:

	mov rdi, 1
	lea rsi, load_message
	mov rdx, offset load_len
	call write

	call to_analyze
	
	mov rdi, 1
	lea rsi, done_message
	mov rdx, offset done_len
	call write

	ret
.data


load_message: .asciz "[INFO] \t\\___ Starting Analysis.\n"
.set load_len, . - load_message

done_message: .asciz "[INFO] \t\\___ Finished.\n"
.set done_len, . - done_message
