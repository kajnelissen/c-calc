CC = gcc
CFLAGS = -O
OBJS = calculator.o cp_calculator.o
OBJS2 = calculator.o srv_calculator.o
LIBPATH = /home/adminuser/calc/c-calc

cp_binary: ${OBJS}
	${CC} -o cp_binary ${OBJS}

cp_debug: CFLAGS += -DDEBUG -g
cp_debug: cp_binary

cp_lib_binary: libcalc cp_calculator.o
	${CC} -L${LIBPATH} -Wl,-rpath=${LIBPATH} -Wall -o cp_lib_binary cp_calculator.o -lcalc

srv_binary: ${OBJS2}
	${CC} -o srv_binary ${OBJS2}

srv_debug: CFLAGS += -DDEBUG -g
srv_debug: srv_binary

srv_lib_binary: libcalc srv_calculator.o
	${CC} -L${LIBPATH} -Wl,-rpath=${LIBPATH} -Wall -o srv_lib_binary srv_calculator.o -lcalc
	

calculator.o: calculator.h calculator.c
	${CC} ${CFLAGS} -c calculator.c

cp_calculator.o: cp_calculator.c calculator.h
	${CC} ${CFLAGS} -c cp_calculator.c

srv_calculator.o: srv_calculator.c
	${CC} ${CFLAGS} -c srv_calculator.c

libcalc:
	gcc -shared -o libcalc.so -fPIC calculator.c

clean: 
	rm -f *.o *.so cp_binary srv_binary cp_lib_binary srv_lib_binary
