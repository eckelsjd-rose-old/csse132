/*
 * part1.c
 *
 * This is one part of the CSSE 132 exam 2 coding part.
 * Complete the functions in this file and be sure to
 * TYPE YOUR NAME IN THIS FILE BELOW.
 *
 * NAME: Joshua Eckels
 *
 * REQUIREMENTS:
 * 1. Remove Done comments after you complete it.
 * 2. Ensure this file compiles before you commit your changes
 * 3. If you use any code from standard libraries (like string.h) use a comment
 *    to explain what it does.
 * 4. If you want partial credit for a solution that doesn't fully work, describe
 *    what you are attempting to do in comments.
 *
 */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>


/**
 * arrayMax():
 *
 * Finds the largest number in an array and returns it.
 *
 * You MAY NOT call any functions from this function unless you create them
 * inside this file.
 *
 * @param array - the array of integers to scan
 * @param len   - the length of the array
 * @return - the largest element in the array, or -1 if there are no elements.
 */
int arrayMax(int* array, int len)
{
  // DONE: Implement this function
  int i;
  int max = array[0];
  if (len == 0) {
    return -1;
  }
  for (i=0; i<len - 1; i++) {
    if (array[i] > max) {
      max = array[i];
    }
  }
  return max;
}


/**
 * countSpaces():
 *
 * Counts and returns the number of space-like characters in a provided string.
 * A space-like character is one of three possible character values:
 *   - a space   ' '
 *   - a tab     '\t'
 *   - a newline '\n'
 *
 * You MAY NOT call any functions from this function unless you create them
 * inside this file.
 *
 * @param input - the C string to scan for spaces. WARNING: it may be NULL!
 * @return - the number of spaces found in the string or -1 if the string is
 *           NULL.
 */
int countSpaces(char* input)
{
  // DONE: Implement this function
  int i = 0;
  int count = 0;
  if(input == NULL) {
    return -1;
  }
  while (input[i] != '\0') {
    if(input[i] == ' ' || input[i] == '\t' || input[i] == '\n') {
      count++;
    }
    i++;
  }
  return count;
}

/**
 * despacer():
 *
 * Remove the space-like characters in a string and return as a new string.
 * A space-like character is one of three possible character values:
 *   - a space   ' '
 *   - a tab     '\t'
 *   - a newline '\n'
 *
 * You MAY NOT call any functions from this function except:
 *  - malloc
 *  - free
 *  - other functions you implement in this file (like countSpaces)
 *
 * If you want to use a string length function, you must create it in this file
 * first.
 *
 * @param input - the C string to scan for spaces. WARNING: it may be NULL!
 * @return - the new string without space-like characters in it
 *          or NULL if the string is NULL.
 */
char* despacer(char* input)
{
  // DONE: Implement this function
  int i = 0;
  int j = 0;
  int k = 0;
  char* newString;
  int len = 0;
  if(input == NULL) {
    return NULL;
  }
  while(input[k] != '\0') {
    len++;
    k++;
  }
  newString = malloc(len - countSpaces(input));
  while (input[i] != '\0') {
    if(input[i] != ' ' && input[i] != '\t' && input[i] != '\n') {
      newString[j] = input[i];
      j++;
    }
    i++;
  }
  newString[j] = '\0';
  return newString;
}


/**
 * shuffle():
 *
 * Like you may do with a deck of cards split in half: shuffle two strings together, then
 * split the result in half.
 *
 * Given two strings of equal (but unknown) length, this function constructs a
 * new string by choosing alternating values from the str1 and str2 until they
 * are combined into a "shuffled" string.
 *
 * For example, assume X points to the string "AAaa"
 *                     Y points to the string "BBbb"
 *   -> shuffle(X,Y) combines the strings into "ABABabab", then replaces
 *                   the contents of X with the first half ("ABAB")
 *                   and Y with the second half ("abab").
 *
 *      printf("%s / %s\n", X, Y);  // prints "AAaa / BBbb"
 *      shuffle(X, Y);              // shuffles the strings
 *      printf("%s / %s\n", X, Y);  // prints "ABAB / abab"
 *
 * HINT: Allocate a temporary string on the heap that fits both input strings
 *       and shuffle both input strings together into the temporary string.
 *       Once done, copy the first half of the temp string
 *       back into str1 and the second half into str2.
 *
 * ASSUME the two strings have the same length.
 *
 * BE SURE to avoid causing any memory leaks.
 *
 * @param str1 - The first string to shuffle
 * @param str2 - The second string to shuffle
 * @returns nothing (but the strings are modified)
 */
void shuffle(char* str1, char* str2)
{
  // TODO: Implement this function
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





//////////////////////////////////////////////////////////////////////////////
//  STOP!                                                                   //
// NOTHING to do below: the following code tests what you implemented above //
//////////////////////////////////////////////////////////////////////////////


/** Used for testing despacer: do not modify. **/
int TEST_DESPACER(char* input,  const char* expected)
{
  if(input == NULL && despacer(NULL) == NULL)
          return 1;

  char * re = despacer(input);

  int status =  (re == NULL && input == NULL) 
             || (re != NULL && (strncmp(re, expected, strlen(expected)) == 0));
  if (!status) {
    printf(" [%s] despacer(\"%s\") = \"%s\"\n",
           status ? "pass" : "FAIL", input, re);
  }
  if(re) free(re);
  return status;
}

/** Used for testing strFuse: do not modify. **/
int TEST_SHUFFLE(const char* a, const char* b, const char* expecteda, const char* expectedb, int exp_len)
{
  // This is grossly inefficient, don't do this in your exam answers.
  char X[512], Y[512];
  strncpy(X, a, exp_len+1);
  strncpy(Y, b, exp_len+1);

  shuffle(X,Y);

  int status = (strncmp(X, expecteda, exp_len) == 0) &&
               (strncmp(Y, expectedb, exp_len) == 0);
  if (!status) {
    printf(" [%s] shuffle(\"%s\", \"%s\") = \"%s\", \"%s\"\n",
           status ? "pass" : "FAIL", a, b, X, Y);
  }
  return status;
}

/**
 * The main function.  When you compile and run this program, this function
 * will test the code you write above.  You may add additional tests if you
 * wish, but it is not required.  Adding more tests may help you find errors in
 * your code.
 */
int main(int argc, char** argv)
{
  // some tests
  int r;
  int sum = 0;

  printf("TESTING arrayMax:\n");
  int ints[10] = {0, 16, -32, 32765, 12, -2147483645, 18, 0, 16, 56};
  int max;

  r = 0;
  max = arrayMax(ints, 0); // should be -1
  if (max == -1) { r++; }
  else { printf(" [FAIL]: arrayMax(, 0) TEST 1 = %d (%d expected)\n", max, -1); }

  max = arrayMax(ints, 1); // should be 0
  if (max ==  0) { r++; }
  else { printf(" [FAIL]: arrayMax(, 1) TEST 2 = %d (%d expected)\n", max, 0); }

  max = arrayMax(ints, 10); // should be 32765
  if (max ==  32765) { r++; }
  else { printf(" [FAIL]: arrayMax(,10) TEST 3 = %d (%d expected)\n", max, 32765); }

  max = arrayMax(ints+5, 1); // should be -2147483645
  if (max ==  -2147483645) { r++; }
  else { printf(" [FAIL]: arrayMax(, 1) TEST 4 = %d (%d expected)\n", max, -2147483645); }

  printf("  Results: %d/4 passed\n\n",r);
  sum += r;


  r = 0;
  printf("TESTING countSpaces:\n");
  if (countSpaces(NULL) == -1) { r++; }
  else { printf(" [FAIL] countSpaces(NULL)       = %d (-1 expected)\n",   countSpaces(NULL));}

  if (countSpaces("") == 0) { r++; }
  else { printf(" [FAIL] countSpaces(\"\")       = %d (0 expected)\n",   countSpaces(NULL));}

  if (countSpaces("a b c") == 2) { r++; }
  else { printf(" [FAIL] countSpaces(\"a b c\")    = %d (2 expected)\n",  countSpaces("a b c")); }

  if (countSpaces("a\tb  c ") == 4) { r++; }
  else { printf(" [FAIL] countSpaces(\"a\\tb  c \") = %d (4 expected)\n", countSpaces("a\tb  c ")); }

  if (countSpaces("      ") == 6) { r++; }
  else { printf(" [FAIL] countSpaces(\"      \")   = %d (6 expected)\n",  countSpaces("      ")); }

  printf("  Results: %d/5 passed\n\n",r);
  sum += r;

  printf("TESTING despacer:\n");
  r = 0;
  // Args to TEST_DESPACER:
  //       (INPUT_STRING, EXPECTED_OUTPUT)
  r += TEST_DESPACER(NULL,           NULL);
  r += TEST_DESPACER("a b c",        "abc");
  r += TEST_DESPACER("a\tb c ",      "abc");
  r += TEST_DESPACER("a\n\tb\n\nc",  "abc");
  r += TEST_DESPACER("        ",     "");
  r += TEST_DESPACER("\t   \n",      "");
  printf("  Results: %d/6 passed\n\n",r);
  sum += r;


  printf("TESTING shuffle:\n");
  r = 0;
  // Args to TEST_SHUFFLE:
  //       (X, Y, SHUFFLED_X, SHUFFLED_Y, LENGTH_OF_X)
  r += TEST_SHUFFLE("AAaa", "BBbb", "ABAB", "abab", 4);
  r += TEST_SHUFFLE("ABCD", "1234", "A1B2", "C3D4", 4);
  r += TEST_SHUFFLE("A", "1",
                    "A", "1", 1);
  r += TEST_SHUFFLE("One Fine Day", "I met a bird",
                    "OIn em eFti ", "nae  bDiaryd", 12);
  r += TEST_SHUFFLE("TI SAGATSRN O A' OET ESR AIYWTOTABGRLRtpbigs efaae o tig hr' ohp noewl r ht",
                    "HSI  IN TIGYUCNTHP OMAUEESL IHU  I UEso en osl wr,yusrn,teesn oeayn iltyta!",
                    "THIS IS A GIANT STRING YOU CAN'T HOPE TO MEASURE EASILY WITHOUT A BIG RULER",
                    "stop being so self aware, you string, there's no hope anyone will try that!", 75);
  r += TEST_SHUFFLE("", "", "", "", 0);
  printf("  Results: %d/6 passed\n\n",r);
  sum += r;


  printf("TOTAL TESTS PASSED (not points earned): %d/21\n\n", sum);

  return 0;
}
