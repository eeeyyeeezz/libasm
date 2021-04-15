; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcmp.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: gmorra <gmorra@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2021/04/15 by gmorra                     #+#    #+#              ;
;    Updated: 2021/04/15 by gmorra                    ###   ########.fr        ;
;                                                                              ;
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;

global			_ft_strcmp

_ft_strcmp:

mov		r10, 0

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
