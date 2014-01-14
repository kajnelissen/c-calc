CC = gcc
CFLAGS = -O
OBJS = calculator.o cp_calculator.o
OBJS2 = calculator.o srv_calculator.o

cp_binary: ${OBJS}
	${CC} -o cp_binary ${OBJS}

cp_debug: CFLAGS += -DDEBUG -g
cp_debug: cp_binary

srv_binary: ${OBJS2}
	${CC} -o srv_binary ${OBJS2}

srv_debug: CFLAGS += -DDEBUG -g
srv_debug: srv_binary

calculator.o: calculator.h calculator.c
	${CC} ${CFLAGS} -c calculator.c

cp_calculator.o: cp_calculator.c calculator.h
	${CC} ${CFLAGS} -c cp_calculator.c

clean: 
	rm -f *.o *.so cp_binary
