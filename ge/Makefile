CC = @cc

NAME = get_next_line.a

CFLAGS = -Wall -Wextra -Werror

AR = @ar rcs

SRCS = get_next_line_utils.c get_next_line.c

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