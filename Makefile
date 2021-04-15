
NAME = libasm.a

SRC =	src/ft_strlen.s\
		src/ft_strcmp.s\
		src/ft_strcpy.s\
		src/ft_strdup.s\

OBJ = $(SRC:.s=.o)

FLAGS = nasm -f macho64

all: ${NAME}

${NAME}:
	${FLAGS} src/ft_strlen.s\
	${FLAGS} src/ft_strcmp.s\
	${FLAGS} src/ft_strcpy.s\
	${FLAGS} src/ft_strdup.s\
	ar rc ${NAME} ${OBJ}

clean:
	rm -f ${OBJ}

fclean:
	rm -f ${NAME}

re:
	fclean
	make all

.PHONY: all clean fclean re
