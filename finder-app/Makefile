# # Compiler and flags
# CC := gcc
# CROSS_COMPILE :=

# # Cross-compiler for ARM (adjust path and prefix as needed)
# CROSS_CC := aarch64-none-linux-gnu-gcc
# CROSS_CFLAGS :=

# # Default target: Build the writer application
# default: writer

# # Target for building writer application
# writer:
# 	$(CROSS_COMPILE)$(CC) $(CFLAGS) -o writer writer.c $(LDFLAGS)

# # Clean target: Remove writer application and .o files
# clean:
# 	rm -f writer *.o

# # Cross-compilation support
# ifeq ($(filter aarch64-none-linux-gnu-%,$(CROSS_COMPILE)),aarch64-none-linux-gnu-)
# CROSS_COMPILE := $(patsubst aarch64-none-linux-gnu-%,%,$(CROSS_COMPILE))
# CC := $(CROSS_CC)
# endif

.PHONY: all
all: writer

CROSS_COMPILE ?=

CC := $(CROSS_COMPILE)gcc
CFLAGS := -Wall -Wextra -std=c11

SRCS := writer.c
OBJS := $(SRCS:.c=.o)

writer: $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o writer

.PHONY: clean
clean:
	rm -rf writer $(OBJS)
