
//CSSE 132 Lab 5: simple.c
// Names: Joshua Eckels, Nate Nordquist

#include "data.h"
#include "stdlib.h"
void main()
{
struct db_entry stack;
stack.name = "Name";
stack.value = "Value";
dbe_print(&stack);

struct db_entry* heap;
heap = malloc(sizeof(struct db_entry));
heap[0].name = "Hello";
heap[0].value = "Goodbye";
dbe_print(heap);
free(heap);

struct db_entry* data = dbe_alloc("My Name", "My Value");
dbe_print(data);
dbe_free(data);
}
