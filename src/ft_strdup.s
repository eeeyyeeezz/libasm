; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: gmorra <gmorra@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2021/04/15 by gmorra                     #+#    #+#              ;
;    Updated: 2021/04/15 by gmorra                    ###   ########.fr        ;
;                                                                              ;
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;

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
