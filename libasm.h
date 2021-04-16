/*						*/
/*	libasm.h			*/
/*	author: gmorra		*/
/*	date:	16.04.21	*/
/*						*/

#ifndef LIBASM_H
# define LIBASM_H
# include <printf.h>
# include <stdlib.h>
# include <string.h>
# include <unistd.h>
# include <fcntl.h>

size_t			ft_strlen(char *str);
char 			*ft_strcpy(char *dst, const char *src);
int				ft_strcmp(char *s1, char *s2);
char			*ft_strdup(char *s1);
ssize_t			ft_write(int fd, const char *buf, size_t bytes);
ssize_t			ft_read(int fd, char *buf, size_t bytes);

#endif
