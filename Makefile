# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: egrazina <egrazina@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/17 17:18:13 by egrazina          #+#    #+#              #
#    Updated: 2021/03/09 15:08:04 by egrazina         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc

CFLAGS = -Wall -Wextra -Werror

NAME = libft.a

SRC = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c \
ft_isdigit.c ft_isprint.c ft_isprint.c ft_itoa.c ft_memchr.c ft_memcmp.c \
ft_memcpy.c ft_memset.c ft_putchar_fd.c ft_strlcat.c ft_putnbr_fd.c ft_strchr.c \
ft_putendl_fd.c ft_strdup.c ft_strjoin.c ft_putstr_fd.c ft_strlcpy.c ft_strlen.c \
ft_strmapi.c ft_strncmp.c ft_strnstr.c ft_substr.c ft_tolower.c ft_toupper.c \
ft_strtrim.c ft_split.c ft_strrchr.c ft_memccpy.c ft_memmove.c

BONUS = ft_lstnew.c ft_lstadd_front.c ft_lstadd_back.c ft_lstlast.c ft_lstsize.c \
ft_lstdelone.c	ft_lstclear.c ft_lstiter.c ft_lstmap.c

OBJ = $(SRC:.c=.o)

OBJB = $(BONUS:.c=.o)

all : $(NAME)

$(NAME) : $(OBJ) libft.h
		ar rc $(NAME) $(OBJ)
		ranlib $(NAME)

bonus : $(OBJB) libft.h
		ar rc $(NAME) $(OBJB)
		ranlib $(NAME)

%.o	: %.c
		$(CC) $(CFLAGS) -c -o $@ $<


clean :
		rm -rf *.o

fclean : clean
		rm -rf $(NAME)

re : fclean all

rebonus : fclean bonus
