;						;
;	ft_strdup.s			;
;	author: gmorra		;
;	date:	16.04.21	;
;						;

global		_ft_strdup
section .text
extern _malloc, _ft_strlen, _ft_strcpy


_ft_strdup:
	push	rdi
	call	_ft_strlen
	mov		rdi, rax
	inc		rax
	call	_malloc
	mov		rdi, rax
	pop		rsi
	cmp		rax, 0
		je .error
	call _ft_strcpy
	ret
.error:
	ret
