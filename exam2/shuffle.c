#include <stdlib.h>
#include <stdio.h>

void shuffle(char* str1, char* str2)
{
  // DONE: Implement this function
  int i = 0;
  int len = 0;
  while(str1[i] != '\0') {
    len++;
    i++;
  }
  i = 0;
  int j;
  int k = 0;
  char* newString;
  newString = malloc(2 * len);
  for (j = 0; j<len; j++) {
    newString[k] = str1[j];
    k=k+2;
  }
  newString[k] = '\0';
  j = 0;
  k = 1;
  for (j = 0; j<len; j++) {
    newString[k] = str2[j];
    k=k+2;
  }
  j=0;
  for (j = 0; j<len; j++) {
    str1[j] = newString[j];
  }
  j=0;
  k=len;
  for(j = 0; j<len; j++) {
    str2[j] = newString[k];
    k++;
  }
  free(newString);
  return;
}


int main(int argc, char** argv) {
  if (argc != 3) {
    printf("Usage: ./shuffle string1 string2\n");
    return 0;
  }
  char* str1;
  char* str2;
  str1 = argv[1];
  str2 = argv[2];
  int len1 = 0;
  int len2 = 0;
  int i = 0;
  while(str1[i] != '\0') {
    len1++;
    i++;
  }
  i = 0;
  while(str2[i] != '\0') {
    len2++;
    i++;
  }
  i = 0;

  if(len1 != len2) {
    printf("ERROR: The input strings must be the same length.\n");
    return 0;
  }
  shuffle(str1, str2);
  printf("%s\n%s\n",str1, str2);
  return 0;
}

//This file does not make correctly yet. I don't know if I did the include at the top of the file right. But if I could fix that, this would be my finisehd code.
