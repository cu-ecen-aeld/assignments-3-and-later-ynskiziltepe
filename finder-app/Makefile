
#CROSS_COMPILE = aarch64-none-linux-gnu- 
# Cross-compile settings
CROSS_COMPILE ?= aarch64-none-linux-gnu-
PREFIX := $(CROSS_COMPILE)
CC := $(PREFIX)gcc

# Targets
all: writer

# Object file creation
writer.o: writer.c
	$(CC) -c writer.c -o writer.o

# Executable file creation
writer: writer.o
	$(CC) writer.o -o writer

# Clean up
clean:
	rm -f *.o writer

# Extra recommendations
.PHONY: all clean