CC = @cc

NAME = libftprintf.a

CFLAGS = -Wall -Wextra -Werror

AR = @ar rcs

SRCS = ft_printf.c ft_printf_char_func.c ft_printf_nbr_func.c ft_put_hexa.c ft_printf_put_pointer.c

OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)

clean:
	@rm -rf $(OBJS)

fclean: clean
	@rm -rf $(NAME)

re: fclean all

.PHONY: all re clean fclean  