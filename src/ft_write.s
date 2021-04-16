;						;
;	ft_write.s			;
;	author: gmorra		;
;	date:	16.04.21	;
;						;

global _ft_write
extern ___error
section .text

_ft_write:

	mov		rax, 0x2000004
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
