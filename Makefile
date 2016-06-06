## Made by gendro_v ##

########################################
##   _____             _____ _    _   ##
##  / ____|           / ____| |  | |  ##
## | |  __  ___ _ __ | (___ | |__| |  ##
## | | |_ |/ _ \ '_ \ \___ \|  __  |  ##
## | |__| |  __/ | | |____) | |  | |  ##
##  \_____|\___|_| |_|_____/|_|  |_|  ##
##                                    ##
########################################

###############################

#####################

###########

#####

#

########################
###### CUSTOM PART #####
########################

####	NAME	###

# Project name displayed

PROJECT		=	GenSH - Epitech PACE

# Binary name

NAME		=	gensh

####	PROG VARIABLE	###

CC		=	g++
RM		=	rm -f
MV		=	mv -f

####	Dev Part	####

SRC		+=	$(wildcard ./src/*.cpp)

OBJ		=	$(SRC:.cpp=.o)

########	########
## End of custom part ##
########	########

# Flags

CPPFLAGS	+=	-W -Wall -Wextra -O3 -std=c++11 -g
CPPFLAGS	+=	$(LDFLAGS) $(IFLAGS)
LDFLAGS		+=	-lncurses
IFLAGS		+=	-I. -I./header/

# Create Sources namefile
SRC_DIR		=	./src/
SRC		=	$(foreach file, $(SRC_SRC), $(SRC_DIR)$(file))

#################
## COMPILATION ##
#################

## Settings ##

.SILENT :

.PHONY :	re all begin do_fclean fclean do_clean clean end src header info lib

## Display rule ##

all :			first_time first $(NAME)

first :
		echo "#### $(PROJECT) ####"

## Compilation ##

$(NAME)		:	$(OBJ)
			make -C ./makefile_src/
			./makefile_src/make_display "Compiling" $(SRC)
			$(CC) -o $(NAME) $(OBJ) $(CFLAGS) $(CPPFLAGS)

## Clean ##

clean :			first do_clean

do_clean :
			make -C ./makefile_src/
			./makefile_src/make_display "Cleaning" $(SRC)
			make clean -C ./makefile_src/
			$(RM) $(OBJ)

## Fclean ##

fclean :		first do_fclean

do_fclean :
			make -C ./makefile_src/
			./makefile_src/make_display "Cleaning" $(OBJ) $(NAME)
			$(RM) $(OBJ)
			$(RM) $(NAME)
			make fclean -C ./makefile_src/

## Re ##

re :			first do_fclean $(NAME)

## First ##

first_time :
			mkdir -p src
			mkdir -p header
			mkdir -p lib
			mkdir -p test
			mkdir -p info

#

#####

###########

#####################

###############################

###############################################

#################################################################
