MAKEFLAGS 			+= --no-print-directory
NAME				= so_long
LIBFT				= ./libft/libft.a
PRINTF				= ./printf/libftprintf.a
GET_NEXT_LINE		= ./get_next_line/get_next_line.a
SRC_DIR				= src/
OBJ_DIR				= obj/
INC					=	./mlx
MLX					=	$(INC)/libmlx_Linux.a
LIB					=	$(MLX) -lXext -lX11 -lm -lz
CC					= cc
CFLAGS				= -Wall -Werror -Wextra -I
RM					= rm -f


COMMANDS_DIR		=	$(SRC_DIR)map.c\
					
SRC     			=$(COMMANDS_DIR)
OBJ 				= $(patsubst $(SRC_DIR)%.c,$(OBJ_DIR)%.o,$(SRC))

COLOR_PINK		=	\033[0;35m \033[1m
COLOR_GREEN		=	\033[0;32m \033[1m
COLOR_BLUE		=	\033[0;36m \033[1m
COLOR_R				=	\033[0;31m
COLOR_END		=	\033[0m

all: 				$(NAME)

$(NAME): 			$(OBJ) $(GET_NEXT_LINE) $(LIBFT) $(PRINTF)
					@$(CC) $(CFLAGS) $(OBJ)  $(GET_NEXT_LINE) $(LIBFT) $(PRINTF) $(LIB) -o $(NAME)
					@echo "\n$(COLOR_PINK)$(NAME)	$(COLOR_GREEN)[is ready!]\n$(COLOR_END)"

$(LIBFT):
					@make -C ./libft
					
$(PRINTF):
					@make -C ./printf

$(OBJ_DIR)%.o:		$(SRC_DIR)%.c
					@mkdir -p $(@D)
					@$(CC) $(CFLAGS) $(INC) -c $< -o $@	

$(GET_NEXT_LINE):
					@make -C ./get_next_line
					@printf "$(COLOR_R)\n"	
					@echo "  ██████  ▒█████   ██▓     ▒█████   ███▄   ██   ▄████ "; sleep 0.1
					@echo "▒██    ▒ ▒██▒  ██▒▓██▒    ▒██▒  ██▒ ██ ▀█  ██  ██▒ ▀█▒"; sleep 0.1
					@echo "░ ▓██▄   ▒██░  ██▒▒██░    ▒██░  ██▒▓██  ▀█ ██▒▒██░▄▄▄░";	sleep 0.1
					@echo "  ▒   ██▒▒██   ██░▒██░    ▒██   ██░▓██▒  ▐▌██▒░▓█  ██▓";	sleep 0.1
					@echo "▒██████▒▒░ ████▓▒░░██████▒░ ████▓▒░▒██░   ▓██░░▒▓███▀▒";	sleep 0.1
					@echo "▒ ▒▓▒ ▒ ░░ ▒░▒░▒░ ░ ▒░▓  ░░ ▒░▒░▒░ ░ ▒░   ▒ ▒  ░▒   ▒ ";	sleep 0.1
					@echo "░ ░▒  ░ ░  ░ ▒ ▒░ ░ ░ ▒  ░  ░ ▒ ▒░ ░ ░░   ░ ▒░  ░   ░ ";	sleep 0.1
					@echo "░  ░  ░  ░ ░ ░ ▒    ░ ░   ░ ░ ░ ▒     ░   ░ ░ ░ ░   ░ ";	sleep 0.1
					@echo "      ░      ░ ░      ░  ░    ░ ░           ░       ░ ";	sleep 0.1
					@printf "$(COLOR_E)\n"			

clean:
					@$(RM) -r $(OBJ_DIR)
					@make clean -C ./libft
					@make clean -C ./printf
					@make -C ./get_next_line	
					@echo "$(COLOR_PINK)objects	$(COLOR_BLUE)[are deleted!]$(COLOR_END)"

fclean: 			clean
					@$(RM) $(GET_NEXT_LINE)
					@$(RM) $(NAME)
					@$(RM) $(LIBFT)
					@$(RM) $(PRINTF)
					@echo "$(COLOR_PINK)$(NAME)	$(COLOR_BLUE)[is deleted!]$(COLOR_END)"

re: 				fclean all

.PHONY: 			all clean fclean re