; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: gmorra <gmorra@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2021/04/15 by gmorra                     #+#    #+#              ;
;    Updated: 2021/04/15 by gmorra                    ###   ########.fr        ;
;                                                                              ;
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;

global		_ft_strcpy

	section .text

_ft_strcpy:

mov		rax, 0
mov		bl, 0

.loop:
	cmp byte [rsi + rax], 0
	je .return
	mov bl, [rsi + rax]
	mov [rdi + rax], bl
	inc rax
	jmp .loop
.return:
	mov byte [rdi + rax], 0
	mov rax, rdi
	ret

