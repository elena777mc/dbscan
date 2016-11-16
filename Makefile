#   make        -- compiles your project into program.exe
#   make clean  -- removes compiled item
#   make handin -- creates a project Zip file for hand in
#
# All .cpp flles are included.

CC = mpicxx
SRCS = $(wildcard *.cpp)
HDRS = $(wildcard *.h)
OBJS = $(SRCS:.cpp=.o)
DIRS = $(subst /, ,$(CURDIR))
PROJ = mpi_dbscan

APP = $(PROJ)
CFLAGS= -c -O3
LDFLAGS=
LIBS= -lstdc++ -O3

all: $(APP)

$(APP): $(OBJS)
	$(CC) $(INCLUDE_DIR)  $(LDFLAGS) $(OBJS) -o $(APP) $(LIBS)

%.o: %.cpp $(HDRS) $(MF)
	$(CC) $(INCLUDE_DIR)  $(CFLAGS) $< -o $@

clean:
	rm -f *.o $(APP)

