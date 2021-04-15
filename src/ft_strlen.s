; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: gmorra <gmorra@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2021/04/15 by gmorra                     #+#    #+#              ;
;    Updated: 2021/04/15 by gmorra                    ###   ########.fr        ;
;                                                                              ;
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;

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

