SOURCES=$(wildcard *.s)
OBJFILES=$(SOURCES:.s=.o)
EXEC=prog
LDARGS=
AS=as
LD=ld

.SUFFIXES : .s .o

.s.o:
	@echo "AS $^ > $@"
	@$(AS) -o $@ $^

${EXEC}: ${OBJFILES}
	@echo "LD $^ > $@"
	@$(LD) $(LDARGS) -o $@ $^

${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC}
