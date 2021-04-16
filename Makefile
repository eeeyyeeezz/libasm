# 						#
# 	Makefile			#
# 	author: gmorra		#
# 	date:	16.04.21	#
# 						#

NAME = libasm.a

HEADER = libasm.h

SRC =	src/ft_strlen.s\
		src/ft_strcmp.s\
		src/ft_strcpy.s\
		src/ft_strdup.s\
		src/ft_read.s\
		src/ft_write.s

OBJ = $(SRC:.s=.o)

FLAGS = -f macho64

CC = gcc

%.o: %.s
	nasm ${FLAGS}  $<

all: ${NAME}

${NAME}: ${OBJ} ${HEADER}
	ar -rcs ${NAME} ${OBJ}

clean:
	rm -f ${OBJ}

fclean: clean
	rm -f ${NAME} a.out

re:
	fclean
	make all

.PHONY: all clean fclean re
