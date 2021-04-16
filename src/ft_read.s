;						;
;	ft_read.s			;
;	author: gmorra		;
;	date:	16.04.21	;
;						;

global	_ft_read
extern	___error
section .text

_ft_read:

mov		rax, 0x2000003
	syscall
	jc		error
	ret

error:
	push r15
	mov	r15, rax
	call ___error
	mov [rax], r15
	mov	rax, -1
	pop r15
	ret
