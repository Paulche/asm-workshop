section .text

global  _start 

_start: 
	call _sayhello
	mov rax, 60 	 ; exit
	syscall
	ret

_sayhello:
	mov rdi, msg
	call _strlen

	mov rdx, rax 	; length
 	mov rdi, 1 	; file descriptor
	mov rsi, msg	; message
 
	mov rax, 1 	; write 
	syscall 
	ret

_strlen: 
	mov rax, 0  	; Return value
	jmp strlen_loop_start

  strlen_loop:
	inc rax

  strlen_loop_start:
	cmp byte [rdi+rax], 0
	je strlen_loop_end
	jmp strlen_loop

  strlen_loop_end:
	ret

section .data

msg	db 'Hello world!',0xA,0

