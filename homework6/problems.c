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
#include <string.h>

/**
 * This function determines if the string passed in begins with
 * one of the characters in a target string.
 *
 * Examples:
 *   startsWith("foo", "f") => 1
 *   startsWith("foo", "") => 0
 *   startsWith("foo", "X") => 0
 *   startsWith("foo", "Xfg") => 1
 *   startsWith("ate", "aeiou") => 1
 *
 * @param input - the string to examine
 * @return 1 if it begins with a character in the target string,
 *         0 otherwise.
 */
int startsWith(char* input, char* targets)
{
  // DONE: implement this function here
  int i = 0;
  while (targets[i] != '\0') {
    if (input[0] == targets[i] ) {
      return 1;
    }
    i++;
  }
  return 0;
}


/**
 * This function determines if the string passed in begins with
 * a vowel (either upper case or lower case).
 *
 * HINT: call startsWith() above (once you've finished it) with
 *   a string containing all the vowels a, e, i, o, u (in both
 *   upper and lower case).
 *
 * @param input - the string to examine
 * @return 1 if it begins with a vowel
 *         0 otherwise.
 */
int startsWithVowel(char* input)
{
  // DONE: implement this function here
  return startsWith(input, "AEIOUaeiou");
}

/**
 * This function allocates a new string (on the heap) and fills it
 * with a basic pig-latin version of the input word.
 *
 * DO NOT de-allocate the string in this function (the caller will do that).
 *
 *
 * Basic pig-latin rules are as follow:
 *
 * 0. If the input string is empty (just a '\0'), return a copy of
 *     the empty string (a string with only the null char in it).
 * 1. If a word starts with a vowel, add "yay" to the end of the word.
 *     Example: "ate" => "ateyay"
 * 2. If a word starts with a consanant, move the first letter to the
 *    end of the string, and then append "ay".
 *     Example: "code" => "odecay"
 *
 * HINTS:
 *  - use strlen() from string.h to measure the length of a string.
 *  - use strncpy() from string.h to copy a string from one array
 *     to another.  (See 'man 3 strncpy' for details.)
 */
char* pigify(char* input)
{
  // TODO: implement this function here
  // IMPORTANT: DO NOT free any malloc (the caller will do that)
  int i;
  int j;
  char* appendString = malloc(3);

  if (strlen(input) == 0) {
    return "";
  }
  if (startsWithVowel(input) == 1) {
    char* newString = malloc(strlen(input) + 4);
    appendString[0] = 'y';
    appendString[1] = 'a';
    appendString[2] = 'y';

    for (i = 0; i < strlen(input); i++) {
      newString[i] = input[i];
    }
    j = 0;
    for (i = strlen(input); i < strlen(input) + 3; i++) {
      newString[i] = appendString[j];
      j++;
    }
    newString[strlen(input) + 4] = '\0';
    free(appendString);
    return newString;
  }
  else {
    char* newString = malloc(strlen(input) + 3);
    appendString[0] = input[0];
    appendString[1] = 'a';
    appendString[2] = 'y';
    j = 0;
    for (i = 1; i < strlen(input); i++) {
      newString[j] = input[i];
      j++;
    }
    j = 0;
    for (i = strlen(input) - 1; i < strlen(input) + 2; i++) {
      newString[i] = appendString[j];
      j++;
    }
    newString[strlen(input) + 3] = '\0';
    free(appendString);
    return newString;
  }
  return NULL;
}

/** DO NOT create a main function in this file or the test executable won't work. **/
