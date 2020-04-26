#include <stdio.h>
#include <string.h>
#include "problems.c"

/*Censor.c takes in one argument from command line in the form of a file name (ex. example.txt).
*If the file is not found, "file not found" error is printed. If too many arguments are used,
* a usage error is printed. Only 4-letter words are censored, even if they have any kind of punctuation
* after them. Three letter words with punctuation are not censored.
*
*/
int main(int argc, char** argv) {

  if (argc > 2) {
    printf("Usage: ./censor filename\n");
    return 0;
  }

  char word[100];
  char* file = argv[1];

  FILE* fd = fopen(file,"r");

  if (fd == NULL) {
    printf("File not found\n");
    return 0;
  }

  while (fscanf(fd, "%s", word) != EOF) {
    if (strlen(word) == 4 && isWordChar(word[3])) {
      word[1] = '*';
      word[2] = '*';
    }
    if (strlen(word) == 5) {
      if (!isWordChar(word[4])) {
        word[1] = '*';
        word[2] = '*';
      }
    }
    printf("%s ", word);
  }
  printf("\n");
  fclose(fd);
  return 0;

}
