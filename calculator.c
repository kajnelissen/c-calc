#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "calculator.h"

float oadd(float getal1, float getal2)
{
	return getal1 + getal2;
}

float osub(float getal1, float getal2)
{
	return getal1 - getal2;
}

float omul(float getal1, float getal2)
{
	return getal1 * getal2;
}

float odiv(float getal1, float getal2)
{
	return getal1 / getal2;
}

char *calculate(char string[])
{
        // process input
	char delims[] = " ";
	float getal1;
	float getal2;
	char *method, *g1, *g2;
	int n;
	float answer;
	char *result = malloc(sizeof(char) * 50);


	method = strtok(string, delims);
	g1 = strtok(NULL, delims);
	g2 = strtok(NULL, delims);

	getal1 = atof(g1);
	getal2 = atof(g2);

        // choose function to execute
	if ( strcmp(method, "ADD") == 0 )
	{
		answer = oadd(getal1, getal2);
		n = sprintf(result, "%.5f", answer);
	}
	else if (strcmp(method, "SUB") == 0 )
	{
		answer = osub(getal1, getal2);
		n = sprintf(result, "%.5f", answer);
	}
	else if (strcmp(method, "MUL") == 0)
	{
		answer = omul(getal1, getal2);
		n = sprintf(result, "%.5f", answer);
	}
	else if (strcmp(method, "DIV") == 0 )
	{
		answer = odiv(getal1, getal2);
		n = sprintf(result, "%.5f", answer);
	}
	else
	{
		n = sprintf(result, "Warning: Undefined operand!");
	}

	return result;
}
