INCLUDES=
SOURCES=main.c
OBJFILES=main.o
EXEC=prog
CARGS=-Wall -g

.SUFFIXES : .s .c .o

.c.o:
	gcc $(CARGS) -c $<

.s.o:
	gcc $(CARGS) -c $<

${EXEC}: ${OBJFILES}
	gcc $(CARGS) -o ${EXEC} ${OBJFILES}

${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC}