FLEXSOURCES=$(wildcard *.lex)
CSOURCES=$(FLEXSOURCES:.lex=.c)
OBJFILES=$(CSOURCES:.c=.o)
EXEC=prog
CARGS=-Wall -g -Werror
LFLAGS=-lfl
CC=clang
LEX=flex

.SUFFIXES : .lex .c .o

.lex.c:
	@echo "LEX $< > $@"
	@$(LEX) -o$@ $<

.c.o:
	@echo "CC $< > $@"
	@$(CC) $(CARGS) -c $<

${EXEC}: ${OBJFILES}
	@echo "CC $^ > $@"
	@$(CC) $(CARGS) -o $@ $^ ${LFLAGS}

${OBJFILES}: ${CSOURCES}

${CSOURCES}: ${FLEXSOURCES}


clean:
	rm -f ${OBJFILES} ${EXEC} ${CSOURCES}
