/*
 * CSSE 132
 * Rose-Hulman Institute of Technology
 * Computer Science and Software Engineering
 *
 * problems.c: this file is one file where you implement solutions
 *             for the homework assignment.
 *
 * This file contains code for homework in the CSSE 132 class.
 * When you edit this file for class, be sure to put your name here!
 *
 * Edited by
 * NAME: Joshua Eckels
 *
 */
#include <stdlib.h>

/**
 * This function determines whether a character is a "word" character.
 * Word characters are letters A-Z, either capital or lower case.
 *
 * Examples:
 *   isWordChar('A') == 1
 *   isWordChar('z') == 1
 *   isWordChar('"') == 0
 *   isWordChar('\0') == 0
 *   isWordChar('\n') == 0
 *
 * You may not call any functions from isWordChar().
 *
 * @param x - the character to examine
 * @return 1 if it is a word character
 *         0 otherwise.
 */
int isWordChar(char x)
{
  // DONE: complete this function.
  if ((x >= 65 && x <= 90) || (x >= 97 && x <= 122)) {
    return 1;
  }
  else {
    return 0;
  }
}

/**
 * This function determines the length of the first word in a string.
 * If the string does not begin with a word, return zero.
 *
 * Examples:
 *   wordlen("foo") == 3
 *   wordlen(" bar ") == 0
 *   wordlen("") == 0
 *   wordlen("a big string") == 1
 *
 * Hint: use isWordChar() from above.
 *
 * @param str - the string to examine (may be null!)
 * @return the length of the word beginning the string, or zero.
 */
int wordlen(char* str)
{
  // DONE: complete this function
  if (isWordChar(str[0]) == 0) {
    return 0;
  }
  int i = 0;
  int count = 0;
  for (i; isWordChar(str[i]) != 0; i++) {
    count++;
  }
  return count;
}


/** DO NOT create a main function in this file or the test executable won't work. **/
