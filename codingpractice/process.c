#include <string.h>
#include <stdio.h>
#include <stdlib.h>

int isUpper(char c)
{
  return c >= 'A' && c <= 'Z';
}

/**
 * Returns 1 if the given character is a lower case letter, 0 otherwise.
 */
int isLower(char c)
{
  return c >= 'a' && c <= 'z';
}

char transposeUpper(char c, unsigned int num)
{
  // DONE: implement this

  if (isUpper(c + num)) {
    return c + num;
  }
  else {
    int diff = (c + num) - 'Z';
    return 'A' - 1 + diff;
  }
}

/**
 * Same as transposeUpper, but for lower-case characters.
 */
char transposeLower(char c, unsigned int num)
{
  // DONE: implement this

  if (isLower(c + num)) {
    return c + num;
  }
  else {
    int diff = (c + num) - 'z';
    return 'a' - 1 + diff;
  }
}



int main(int argc, char** argv) {
  char buf[512];
  if (argc == 2) {
    FILE* file = fopen(argv[1],"r");
    fgets(buf, 511, file);
    fwrite(buf, 1, 512, stdout);
  }
}
