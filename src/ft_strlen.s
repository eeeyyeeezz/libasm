;						;
;	ft_strlen.s			;
;	author: gmorra		;
;	date:	16.04.21	;
;						;

global		_ft_strlen
section .text

_ft_strlen:

mov		rax, 0

.loop:
	cmp byte [rdi + rax], 0
	je .return
	inc rax
	jmp .loop
.return:
	ret

