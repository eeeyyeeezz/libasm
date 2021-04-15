/* ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; */
/*                                                                              */
/*                                                         :::      ::::::::    */
/*    main.c                                             :+:      :+:    :+:    */
/*                                                     +:+ +:+         +:+      */
/*    By: gmorra <gmorra@student.42.fr>              +#+  +:+       +#+         */
/*                                                 +#+#+#+#+#+   +#+            */
/*    Created: 2021/04/15 by gmorra                     #+#    #+#              */
/*    Updated: 2021/04/15 by gmorra                    ###   ########.fr        */
/*                                                                              */
/* ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; */

#include "libasm.h"

size_t	ft_strlen(char *str);
char 	*ft_strcpy(char *dst, const char *src);
int		ft_strcmp(char *s1, char *s2);

int			main(void)
{
	printf(">_________STRLEN_____________<\n");
	printf("ORIG 'ABOBA' [%zu]\n", strlen("ABOBA"));
	printf("MEIN 'ABOBA' [%zu]\n", ft_strlen("ABOBA"));
	printf("ORIG 'ABOBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA' [%zu]\n", strlen("ABOBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"));
	printf("MEIN 'ABOBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA' [%zu]\n", ft_strlen("ABOBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"));
	printf("ORIG ZERO [%zu]\n", strlen(""));
	printf("ORIG ZERO [%zu]\n", ft_strlen(""));
	char		str1[5];
	char		*str2 = "Bois";
	printf(">_________STRCPY_____________<\n");
	printf("ORIG 'Bois' to [5] [%s]\n", strcpy(str1, str2));
	printf("MEIN 'Bois' to [5] [%s]\n", ft_strcpy(str1, str2));
	char		str3[70];
	char		*str4 = "Boissssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss";
	printf("ORIG 'Boissssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss' to [5] [%s]\n", strcpy(str3, str4));
	printf("MEIN 'Boissssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss' to [5] [%s]\n", ft_strcpy(str3, str4));
	char	str5[1];
	char	str6[] = "\0";
	printf("ORIG 'Bois' to [5] [%s]\n", strcpy(str5, str6));
	printf("MEIN 'Bois' to [5] [%s]\n", ft_strcpy(str5, str6));
	printf(">_________STRCMP_____________<\n");
	printf("ORIG [HELLO] [HELLO] [%d]\n", strcmp("HELLO", "HELLO"));
	printf("MEIN [HELLO] [HELLO] [%d]\n", ft_strcmp("HELLO", "HELLO"));
	char	hel3l[] = "HEL3L";
	printf("ORIG [HEL3L] [HELL] [%d]\n", strcmp(hel3l, "HELL"));
	printf("MEIN [HEL3L] [HELL] [%d]\n", ft_strcmp(hel3l, "HELL"));
	printf("ORIG [] [] [%d]\n", strcmp("", ""));
	printf("MEIN [] [] [%d]\n", ft_strcmp("", ""));
	char	aboba[] = "ABOBA";
	printf("ORIG [] [ABOBA] [%d]\n", strcmp("", aboba));
	printf("MEIN [] [ABOBA] [%d]\n", ft_strcmp("", aboba));
	printf("ORIG [ABOBA] [] [%d]\n", strcmp(aboba, ""));
	printf("MEIN [ABOBA] [] [%d]\n", ft_strcmp(aboba, ""));
	printf(">_________STRDUP_____________<\n");
	char		*s1;
	s1 = strdup("Lupa And Pupa");
	printf("ORIG from [Lupa And Pupa] [%s]\n", s1);
	free(s1);
	char		*s2;
	s2 = ft_strdup("Lupa And Pupa");
	printf("MEIN from [Lupa And Pupa] [%s]\n", s1);
	free(s2);
	char		*s3;
	s3 = strdup("");
	printf("ORIG from [] [%s]\n", s3);
	free(s3);
	char		*s4;
	s4 = ft_strdup("");
	printf("MEIN from [] [%s]\n", s3);
	free(s4);
	char		*s5;
	s5 = strdup("ABOBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
	printf("ORIG from [] [%s]\n", s5);
	free(s5);
	char		*s6;
	s6 = ft_strdup("ABOBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
	printf("ORIG from [] [%s]\n", s6);
	free(s6);
	printf(">_________WRITE_____________<\n");


}

