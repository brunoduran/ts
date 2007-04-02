GCCFLAGS=-D_XOPEN_SOURCE -D__STRICT_ANSI__
CFLAGS=-pedantic -ansi -Wall -g -O0 ${GCCFLAGS}
OBJECTS=main.o \
	server.o \
	server_start.o \
	client.o \
	msgdump.o \
	jobs.o \
	execute.o \
	msg.o \
	client_run.o \
	mail.o

# AWFUL makefile. It doesn't have the header dependencies.

ts: $(OBJECTS)
	gcc -o ts $^

clean:
	rm -f *.o ts
