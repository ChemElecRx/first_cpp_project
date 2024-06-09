# Define compiler and compiler flags
CC = g++
CFLAGS = -Wall -g

# Define target executable
TARGET = first_program

# Define source files
SRCS = main.c foo.c bar.c

# Define object files
OBJS = $(SRCS:.c=.o)

# Default target
all: $(TARGET)

# Rule to link object files and create executable
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

# Rule to compile source files into object files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Rule to clean the build
clean:
	rm -f $(OBJS) $(TARGET)

# Phony targets
.PHONY: all clean

