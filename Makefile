CC=g++
INCLUDES=-I./fltk-1.3.2/ -I./glew-1.10.0/include -I./include
LIB_PATH=-L./fltk-1.3.2/lib/ -L./glew-1.10.0/lib
LIBS=-lfltk -lfltk_gl -lGL -lGLEW -lGLU
LIBS1.3=-ldl -lXft -lXinerama

ALLLIBS=$(LIBS) $(LIBS1.3)

FILES=main.cpp

all:
	$(CC) $(FILES) $(INCLUDES) $(LIB_PATH) $(ALLLIBS)
debug:
	$(CC) -g $(FILES) $(INCLUDES) $(LIB_PATH) $(ALLLIBS)
profile:
	$(CC) -pg $(FILES) $(INCLUDES) $(LIB_PATH) $(ALLLIBS)
