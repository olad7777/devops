section .data

msg db      'w','w' ; w hex - 77, makes it easier to find in memory
len equ     $ - msg

section .text 
             
	global  _start              
			       

_start:
	push rbp
	mov rbp, rsp
	sub rsp, 0x20

	xor rdx, rdx
	mov rdx, 0xbadbabe1

	mov     rax, 60	; sys_exit   
	mov	rdi, 0	; retcode 0
	syscall