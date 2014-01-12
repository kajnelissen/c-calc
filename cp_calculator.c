#include <stdio.h>
#include "calculator.h"

void main(int argc, char *argv[])
{
	if ( argc == 2 )
	{
		char *input;
		input = argv[1];

		char *result;
		result = calculate(input);

		printf("%s", result);
	}
}
