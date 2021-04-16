;						;
;	ft_strcmp.s			;
;	author: gmorra		;
;	date:	16.04.21	;
;						;

global			_ft_strcmp

_ft_strcmp:

mov		r10, 0
mov		rax, 0
mov		rbx, 0

.loop:
	mov	al, byte [rdi + r10]
	mov bl, byte [rsi + r10]
	cmp	al, 0
		je .return
	cmp bl, 0
		je .return
	inc r10
	cmp		al, bl
		je .loop
.return:
	sub		rax, rbx
	ret
