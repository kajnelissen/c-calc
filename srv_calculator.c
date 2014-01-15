#include <stdlib.h>
#include <stdio.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <string.h>
#include "calculator.h"

#define PORT 1234

int main() {

	int socket_desc, connfd = 0;
	int c, client_sock, read_size;

	struct sockaddr_in server, client;

	char sendBuff[1025];
	char client_msg[2000];

	socket_desc = socket(AF_INET, SOCK_STREAM, 0);
	memset(&server, '0', sizeof(server));
	memset(sendBuff, '0', sizeof(sendBuff));

	server.sin_family = AF_INET;
	server.sin_addr.s_addr = INADDR_ANY;
	server.sin_port = htons(PORT);

	if ( bind(socket_desc, (struct sockaddr*)&server, sizeof(server)) < 0 )
	{
		perror("Bind failed. Error.");
		return 1;
	}

	// listen and allow just 1 connection
	listen(socket_desc, 1);

	printf("Waiting for incoming connection...");

	c = sizeof(struct sockaddr_in);
	client_sock = accept(socket_desc, (struct sockaddr*) &client, (socklen_t*) &c);

	if ( client_sock < 0 )
	{
		perror("Accept failed.");
		return 1;
	}

	char *result;
	while ( (read_size = recv(client_sock, client_msg, 2000, 0)) > 0 )
	{	
		result = calculate(client_msg);
		write(client_sock, result, strlen(result));
	}

	return 0;

}
