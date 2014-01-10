CC = gcc
CFLAGS = -O
OBJS = calculator.o cp_calculator.o
db_OBJS = calculator.c cp_calculator.c

cp_binary: ${OBJS}
	${CC} -o cp_binary ${OBJS}

cp_debug: CFLAGS += -DDEBUG -g
cp_debug: cp_binary


calculator.o: calculator.h calculator.c
	${CC} ${CFLAGS} -c calculator.c

cp_calculator.o: cp_calculator.c calculator.h
	${CC} ${CFLAGS} -c cp_calculator.c

clean: 
	rm -f *.o *.so cp_binary
