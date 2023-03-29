INCLUDES=$(wildcard *.h)
SOURCES=$(wildcard *.c)
OBJFILES=$(SOURCES:.c=.o)
EXEC=prog
CARGS=-Wall -g -Werror
CC=clang

.SUFFIXES : .c .o

.c.o:
	@echo "CC $< > $@"
	@$(CC) $(CARGS) -c $<

${EXEC}: ${OBJFILES}
	@echo "CC $^ > $@"
	@$(CC) $(CARGS) -o $@ $^

${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC}
