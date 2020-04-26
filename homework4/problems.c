/*
 * CSSE 132
 * Rose-Hulman Institute of Technology
 * Computer Science and Software Engineering
 *
 * problems.c: this file is where you implement your solutions
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
#include <stdio.h>
#include <ctype.h>

/**
 * This function counts the number of characters in the given string.
 *
 * For example: length("Thing") returns 5.
 * For this function, You MUST use the array brackets: [ and ].
 * You MUST NOT call other functions from length().
 *
 * @param str - a string to measure
 * @returns the number of characters, excluding the null terminator.
 */
int length(char* string)
{
  // : your code goes here.  You may also want to change the return
  // statement.
	char* pa;
	pa = &string[0];
	int n;
	for (n = 0; *pa != '\0'; pa++)
	{
		n++;
	}
	return n;
}


/**
 * This function is the same as length() but doesn't use array operators.
 *
 * For this function, You MUST NOT use the square brackets: [ or ].
 * You MUST NOT call other functions from lengthNoArrays().
 *
 * @param str - a string to measure
 * @returns the number of characters, excluding the null terminator.
 */
int lengthNoArrays(char* string)
{
  // : your code goes here.  You may also want to change the return
  // statement.
	char* xp;
	xp = string;
	int i;
	int n =0;
	for(i=0; *(xp+i) != '\0'; i++) {
	n++;
	}
	return n;
}


/**
 * This function takes an integer and zeroes out every second bit.
 * For example: Since 0xF = 1111 and 0xA = 1010,
 *              bitDropper(0xFFFFFFFF) returns 0xAAAAAAAA
 * @param input - the integer to modify
 * @return the same integer except with every other bit zeroed.
 */
int bitDropper(int input)
{
  // TODO: your code goes here.  You may also want to change the return
  // statement.
	int num = 0xAAAAAAAA;
	return input & num; // I have no idea how to access the bits in an integer. Did we learn this? Just spent 3 hours on google trying to figure this out.
}


/**
 * This function iterates through a string and changes any lowercase vowels
 * (a, e, i, o, u) to their uppercase equivalents.
 *
 * This function modifies the string (it does not make a copy).
 * You can assume the string is properly null-terminated.
 * Write this function yourself using a for loop.
 *
 * @param tochange - the string to change
 * @return the number of vowels up-cased.
 */
int upcaseVowels(char* tochange)
{
  //: your code goes here.  You may also want to change the return
  // statement.
  int i;
  int n = 0;
  for (i=0; tochange[i] != '\0'; i++) {
	if (tochange[i] == 'a' || tochange[i] == 'e' || tochange[i] == 'o' || tochange[i] == 'i' || tochange[i] == 'u') {
		tochange[i] = toupper(tochange[i]);
		n++;
	}
  }
  return n;
}

/** DO NOT create a main function in this file or the test executable won't work. **/
