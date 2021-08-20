
.SUFFIXES: 
.SUFFIXES: .c .o .h

.PHONY: all clean run test

SRC_DIR := src
OBJ_DIR := obj
BIN_DIR := bin

CFLAGS := -std=c17 -Wall -g

EXE := $(BIN_DIR)/proto

SRC := $(wildcard $(SRC_DIR)/*.c)
OBJ := $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRC))

all: $(EXE)

run: $(EXE)
	./$(EXE)

clean:
	@$(RM) -rv $(BIN_DIR) $(OBJ_DIR)

test: $(EXE)
	find examples/good -type f | xargs -t -n 1 ./bin/proto

$(EXE): $(OBJ) | $(BIN_DIR)
	$(CC) $(LDFLAGS) $^ $(LDLIBS) -o $@

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(BIN_DIR) $(OBJ_DIR):
	mkdir -p $@
