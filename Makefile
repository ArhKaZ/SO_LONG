#============================= FILES PART =====================================
SRCS			=	global/create_and_destroy.c		\
					visual/create_visu.c			\
					visual/create_visu_utils.c		\
					free/free_error_or_all.c		\
					free/free_textures.c			\
					free/free_textures_2.c			\
					free/free_utils.c				\
					visual/game_end.c				\
					visual/game_end_utils.c			\
					global/get_map.c				\
					global/get_map_utils.c			\
					global/get_param.c				\
					menu/keypress_menu.c			\
					menu/main_menu_utils.c			\
					menu/main_menu.c				\
					global/map.c					\
					global/map_error.c				\
					player/player_action.c			\
					player/player_action_utils.c	\
					visual/put_image.c				\
					global/rand.c					\
					global/so_long.c				\
					global/test_map.c				\
					global/test_map_utils.c			\
					visual/texture.c				\
					visual/texture2.c				\
					visual/texture_explosion.c		\
					visual/texture_nb.c				\
					visual/verif_texture.c			\
					visual/verif_texture2.c			\
					visual/verif_texture_shoot.c	\

SRCS_B			=	visual/animation.c				\
					shoot/animation_shot.c			\
					global/create_and_destroy.c		\
					visual/create_visu.c			\
					visual/create_visu_utils.c		\
					ennemy/ennemy.c					\
					free/free_error_or_all.c		\
					free/free_textures.c			\
					free/free_textures_2.c			\
					free/free_utils.c				\
					visual/game_end.c				\
					visual/game_end_utils.c			\
					global/get_map.c				\
					global/get_map_utils.c			\
					global/get_param_bonus.c				\
					menu/keypress_menu.c			\
					visual/hud.c					\
					menu/main_menu_utils.c			\
					menu/main_menu.c				\
					global/map.c					\
					global/map_error.c				\
					ennemy/move_ennemy.c			\
					ennemy/move_ennemy_utils.c		\
					player/player_action_bonus.c	\
					player/player_action_utils_bonus.c	\
					player/player_damage.c			\
					visual/put_image.c				\
					global/rand.c					\
					shoot/shoot.c					\
					shoot/shoot_utils.c				\
					shoot/shoot_create_and_moves.c	\
					global/so_long_bonus.c			\
					global/test_map.c				\
					global/test_map_utils.c			\
					visual/texture.c				\
					visual/texture2.c				\
					visual/texture_explosion.c		\
					visual/texture_nb.c				\
					visual/verif_texture.c			\
					visual/verif_texture2.c			\
					visual/verif_texture_shoot.c	\


SRCS_MAP		=	map_generator/create_map.c	 \
					map_generator/create_map_ennemy.c \
					map_generator/create_map_utils.c	\

SRCS_D			=	srcs/

OBJS			=	$(SRCS:%.c=$(OBJS_D)%.o)

OBJS_B			=	$(SRCS_B:%.c=$(OBJS_D_B)%.o)

OBJS_MAP		=	$(SRCS_MAP:%.c=$(OBJS_D)%.o)

OBJS_D			=	obj/

OBJS_D_B		=	obj_b/

HEAD			=	so_long.h

HEAD_MAP		=	map.h

HEAD_D			=	inc/

NAME			=	so_long

NAME_B			=	so_long_bonus

NAME_MAP		=	gen_map

LIBFT_D			=	Libft_w_a/

LIBFT_A			=	Libft_w_a/libft.a

LIBFT_H			=	Libft_w_a/libft.h

MLX_D			=	mlx_linux/

MLX_A			=	mlx_linux/libmlx.a

#==============================================================================

#============================= BASH COMMAND ===================================
CC				=	cc

GCC				=	gcc

CCFLAG			=	-Wall -Werror -Wextra

FSA				=	-fsanitize=address -g3

RM				=	rm -f -r

MLXFLAG 		= -Lmlx_linux -lmlx_Linux -L/usr/lib -Imlx_linux -lXext -lX11 -lm -lz

MLXFLAGO 		= -I/usr/include -Imlx_linux -O3 -g3
#==============================================================================

#============================= MK COMMAND =====================================
$(NAME)			:	$(OBJS_D) $(OBJS) $(HEAD_D)$(HEAD)
				$(CC) $(CCFLAG) -o $(NAME) $(OBJS) $(LIBFT_A) $(MLX_A) $(MLXFLAG)

$(OBJS)			:	$(OBJS_D)%.o: $(SRCS_D)%.c $(HEAD_D)$(HEAD) $(MLX_A) $(LIBFT_A)
				$(CC) $(CCFLAG) -I$(HEAD_D) -I$(LIBFT_D) -I$(MLX_D) $(MLXFLAGO) -c $< -o $@

map				:	$(OBJS_D) $(OBJS) $(OBJS_MAP) $(HEAD_D)$(HEAD_MAP)
				$(CC) $(CCFLAG) -o $(NAME_MAP) $(OBJS_MAP) $(LIBFT_A)

$(OBJS_MAP)		:	$(OBJS_D)%.o: $(SRCS_D)%.c $(HEAD_D)$(HEAD_MAP) $(LIBFT_A)
				$(CC) $(CCFLAG) -I$(HEAD_D) -I$(LIBFT_D) -c $< -o $@

$(NAME_B)		:	$(OBJS_D_B) $(OBJS_B) $(HEAD_D)$(HEAD)
				$(CC) $(CCFLAG) -o $(NAME_B) $(OBJS_B) $(LIBFT_A) $(MLX_A) $(MLXFLAG)

$(OBJS_B)		:	$(OBJS_D_B)%.o: $(SRCS_D)%.c $(HEAD_D)$(HEAD) $(MLX_A) $(LIBFT_A)
				$(CC) $(CCFLAG) -I$(HEAD_D) -I$(LIBFT_D) -I$(MLX_D) $(MLXFLAGO) -c $< -o $@

$(OBJS_D)		:
				mkdir -p $(OBJS_D)
				mkdir -p $(OBJS_D)/ennemy
				mkdir -p $(OBJS_D)/free
				mkdir -p $(OBJS_D)/global
				mkdir -p $(OBJS_D)/map_generator
				mkdir -p $(OBJS_D)/menu
				mkdir -p $(OBJS_D)/player
				mkdir -p $(OBJS_D)/shoot
				mkdir -p $(OBJS_D)/visual

$(OBJS_D_B)		:
				mkdir -p $(OBJS_D_B)
				mkdir -p $(OBJS_D_B)/ennemy
				mkdir -p $(OBJS_D_B)/free
				mkdir -p $(OBJS_D_B)/global
				mkdir -p $(OBJS_D_B)/map_generator
				mkdir -p $(OBJS_D_B)/menu
				mkdir -p $(OBJS_D_B)/player
				mkdir -p $(OBJS_D_B)/shoot
				mkdir -p $(OBJS_D_B)/visual

$(MLX_A)		:	FORCE $(MLX_D)
				make -j -C $(MLX_D) 2>/dev/null >/dev/null

$(LIBFT_A)		:	FORCE
				make -C $(LIBFT_D)


fsanitize		:	$(MLX_A) $(LIBFT_A) $(OBJS_D) $(HEAD_D)$(HEAD) $(OBJS)
				$(CC) $(CCFLAG) $(FSA) -o $(NAME) $(OBJS) $(LIBFT_A) $(MLX_A) $(MLXFLAG)

bonus			:	$(NAME_B)

all				: $(HEAD_D)$(HEAD) $(NAME) $(NAME_B) map

clean			:
				$(RM) $(OBJS) $(OBJS_D) $(OBJS_D_B)

cleanlibext		:
				make fclean -C $(LIBFT_D)
				make clean -C $(MLX_D)

fclean			:	clean cleanlibext
				$(RM) $(NAME) $(NAME_B) $(NAME_MAP)

re				:	fclean $(NAME)

refs			:	fclean fsanitize

.PHONY			:	all clean fclean re bonus refs cleanlibext fsanitize map FORCE
#==============================================================================
