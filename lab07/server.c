/*
 * CSSE 132
 * Rose-Hulman Institute of Technology
 * Computer Science and Software Engineering
 *
 * server.c - Source file with your solutions to the lab.  The
 *            main functionality for this lab should be implemented
 *            in data.c and in here.  This file is used for running the lab's
 *            program as a SERVER.
 *
 *            This is a file you need to hand in!
 *
 * This file contains code used by labs in the CSSE 132 class.
 * When you edit this file for class, be sure to put your name(s) here!
 *
 * Edited by
 * NAMES: Joshua Eckels, Nate Nordquist
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/socket.h>
#include <arpa/inet.h>

#include "data.h"

/* Some constants for the servers and such */
const char*               TRACKER_ADDR    = "127.0.0.1"; /*"137.112.40.225" */
const unsigned short      TRACKER_PORT    = 22222;
const unsigned short      SERVER_PORT     = 20000;


/**
 * Remotely lists the database.
 * Very much like do_list_database, but uses sockets.
 */
void
do_remote_list_database(int sock, struct db_entry** db)
{
  // DONE: implement this.
  // It is very similar to do_list_database, but instead of using
  // printf, you'll be sending to the socket "sock".
  //
  // Hint: use sprintf and a local string variable to construct each
  //       text line you want to send, then send it.
  int i;
  char buf3[512];
  for(i=0; i < DB_MAX_SIZE && db[i] != NULL; i++) {
    sprintf(buf3, "%s => %s\n", db[i]->name, db[i]->value);
    send(sock, buf3, strlen(buf3), 0);
  }

}

/**
 * Remotely finds some matches.
 * Very much like do_find_all_matches, but uses sockets.
 *
 * @param db: a pointer to the database structure
 * @param target: a string to match in names of entries to find
 */
void
do_remote_find_all_matches(int sock, struct db_entry** db, const char* target)
{
  // DONE: implement this.
  // It is very similar to do_find_all_matches, but instead of using
  // printf, you'll be sending to the socket "sock".  The changes to
  // this function are almost identical to the changes you made for
  // do_remote_list_database.
  //
  // Hint: use sprintf and a local string variable to construct each
  //       text line you want to send, then send it.
  char buf4[512];
  int index = 0;
  while (index < db_count_entries(db)) {
    index = db_find_one(db, target, index);
    if (index == -1) {
      return;
    }
    sprintf(buf4, "%s => %s\n", db[index]->name, db[index]->value);
    send(sock, buf4, strlen(buf4), 0);
    memset(buf4, 0, 512);
    index++;
  }
}


/**
 * Runloop that accepts commands from a client socket and responds with
 * results.
 *
 * Commands to implement:
 *
 * q - disconnects client.
 *
 * l - lists the database entries
 *       (do_remote_list_database)
 *
 * a - adds an entry, prompting the user for name and values
 *       (do_add_entry)
 *
 * f - finds an entry, prompting user for a target and
 *       printing the first entries with a matching name.
 *       (do_remote_find_all_matches)
 *
 * r - prompts user for a target and removes the first matching
 *       entry from the database.  No effect if nothing matches.
 *       (do_remove_first_match)
 *
 * If given a command that doesn't match one in this list, print "help" to show
 * what commands are available.
 *
 * @param db: a pointer to the database structure
 * @param clientsock: the socket descriptor for a remote client
 */
void
handleRemoteInput(struct db_entry** db, int clientsock)
{
  // DONE: Implement the command/response run loop.
  // It will be very similar to the handleLocalInput() in your local.c file.
  // The main difference is that instead of getALine and printf, you'll be
  // sending and receiving to and from clientsock.
  //
  // Some hints: see the manpages for send and recv.  (They're in section 2 of the manual).
    const char* instructions = "(a)dd, (l)ist, (r)emove, (f)ind, (q)uit\n";
    char buf[512];
    char buf2[512];
    int len = 0;
  while(1) {
    send(clientsock, "(Remote)> ", 10, 0);
    len = recv(clientsock, buf, 512, 0);
    buf[len] = '\0';

    // select instruction to run based on the input
    switch(buf[0]) {
    case 'x':
    case 'q':
      // DONE: somehow get out of this run loop
      send(clientsock, "Goodbye\n", 8, 0);
      return;

    case 'l': // LIST
      do_remote_list_database(clientsock, db);
      break;

    case 'a': // ADD
      // DONE:
      // 1. prompt for the name and value (use printf) and
      //    read the name and value into buffers (use getALine).
      //    HINT: use the arrays declared at the top of this function.
      // 2. call do_add_entry to add it to the database
      send(clientsock, "name: ", 6, 0);
      len = recv(clientsock, buf, 512, 0);
      if (buf[len - 1] == '\n') {
         buf[len - 1] = '\0';
      }
      send(clientsock, "value: ", 7, 0);
      len = recv(clientsock, buf2, 512, 0);
      if (buf2[len - 1] == '\n') {
        buf2[len - 1] = '\0';
      }
      do_add_entry(db, buf, buf2);
      break;

    case 'r': // FIND and REMOVE ONE
      send(clientsock, "Name to remove: ", 16, 0);
      len = recv(clientsock, buf, 512, 0);
      buf[len] = '0';
      if(buf[len - 1] == '\n'){
        buf[len - 1] = '\0';
      }
      do_remove_first_match(db, buf);
      break;

    case 'f':  //Find
      send(clientsock, "Find: ", 6, 0);
      len = recv(clientsock,buf, 512, 0);
      buf[len] = '\0';
      if (buf[len - 1] == '\n') {
        buf[len - 1] = '\0';
      }
      do_remote_find_all_matches(clientsock, db, buf);
      break;

    default:
      // DONE:
      // The instruction was not one of the above instructions.
      // Print out a help screen that explains what instructions
      // are available.
      send(clientsock, instructions, strlen(instructions), 0);
      break;
    }
  }
}

void
runServer(struct db_entry** database)
{
  // In this function you'll want to open a server socket, set it up, then loop 
  // forever while listening for clients and handling them one at a time.
  
  // The first step is to create a server socket.  For this, you must create an
  // address structure (type: struct sockaddr_in). We'll do this for you:
  int sock;       // server socket
  int clientsock; // client socket

  struct sockaddr_in serv_addr;   // local address
  struct sockaddr_in cli_addr;    // remote address

  int cli_addr_len = sizeof(struct sockaddr_in);

  // Construct local addr structure
  memset(&serv_addr, 0, sizeof(serv_addr));   //zero out
  serv_addr.sin_family = AF_INET;
  serv_addr.sin_addr.s_addr = htonl(INADDR_ANY);  // accept on any interface
  serv_addr.sin_port = htons(SERVER_PORT);

  // DONE: Create a socket (family is AF_INET, type is stream, and protocol
  // is TCP).  See the manpage for socket for more info.
  sock = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);

  // These two lines let us rerun the server immediately after we kill it
  int optval = 1;
  setsockopt(sock, SOL_SOCKET, SO_REUSEADDR, (const void *)&optval , sizeof(int));



  // DONE: bind and listen!
  // To convert a variable of type (struct sockaddr_in*) to a (struct sockaddr*)
  // you will have to typecast it.

  bind(sock, (struct sockaddr*) &serv_addr, sizeof(struct sockaddr_in));
  listen(sock, 1);

  // run loop
  while(1)
  {
    // DONE: accept a connection
    // It may be helpful to display the remote client's IP address after
    // accepting a connection. TO do this, you can use the address that 
    // accept puts into its sockaddr argument and convert it to a string using
    // inet_ntoa().  See the manpage for details on how to use inet_ntoa().
    printf("Ready for connection.\n");
    unsigned int sock_addr_len = sizeof(struct sockaddr);
    clientsock = accept(sock, (struct sockaddr*) &cli_addr, &sock_addr_len);
    printf("Connected to Client %s\n", inet_ntoa(cli_addr.sin_addr));
    // HANDLE ONE CLIENT
    handleRemoteInput(database, clientsock);

    // DONE: shut down and close the client socket.
    // When handleRemoteInput() returns, the client is done interacting.
    printf("Closing connection to client %s\n", inet_ntoa(cli_addr.sin_addr));
    shutdown(clientsock, SHUT_RDWR);
    close(clientsock);
  }

  // DONE: outside the loop, the server has nothing left to do.  Close the
  // server socket.
  printf("Closing server.\n");
  close(sock);
}


int
main(int argc, char** argv)
{
  // make a big, empty database in the heap
  // this is a _pointer_ to an _array_ of db_entry structs.
  struct db_entry** db = malloc(DB_MAX_SIZE * sizeof(struct db_entry*));

  // zero out the memory, just in case.
  memset(db, 0, DB_MAX_SIZE * sizeof(struct db_entry*));

  runServer(db);

  // return the used memory
  free(db);

  return 0;
}
