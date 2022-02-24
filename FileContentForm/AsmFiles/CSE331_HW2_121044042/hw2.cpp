/*-------------------------------------------------------------------------------------------------*/
/*-DESCRIPTION-------------------------------------------------------------------------------------*/
/*-------------------------------------------------------------------------------------------------*/

/* GEBZE TECHNICAL UNIVERSITY, FACULTY OF ENGINEERING, DEPARTMENT OF COMPUTER ENGINEERING          */
/* CSE 331, COMPUTER ORGANIZATION (FALL 2020) COURSE                                               */
/* HOMEWORK 1 (CHECKSUMPROBABILITY PROCEDURE IN MIPS ASSEMBLY LANGUAGE) - CPP PART                 */
/* STUDENT NAME    : SEYDA NUR                                                                     */
/* STUDENT SURNAME : DEMIR                                                                         */
/* STUDENT NUMBER  : 12 10 44 042                                                                  */

/*-------------------------------------------------------------------------------------------------*/

/*-------------------------------------------------------------------------------------------------*/
/*-PROGRAM-INFO------------------------------------------------------------------------------------*/
/*-------------------------------------------------------------------------------------------------*/

/* In this assignment you will write a MIPS assembly program                                       */
/* and test it using MARS instruction set simulator.                                               */
/* You will be given an integer array arr and a number num.                                        */
/* The task is to find if a subset of array elements can sum up to the target num.                 */
/* If not possible you will output "Not possible!".                                                */
/* If it is possible, output "Possible!".                                                          */
/* You can use every array element only once.                                                      */
/* Only positive integers are allowed as array elements.                                           */
/* Finding only one combination is enough to output "Possible!".                                   */

/*-------------------------------------------------------------------------------------------------*/

/*-------------------------------------------------------------------------------------------------*/
/*-INCLUDES----------------------------------------------------------------------------------------*/
/*-------------------------------------------------------------------------------------------------*/

#include <bits/stdc++.h>

/*-------------------------------------------------------------------------------------------------*/

/*-------------------------------------------------------------------------------------------------*/
/*-DEFINES-----------------------------------------------------------------------------------------*/
/*-------------------------------------------------------------------------------------------------*/

#define MAX_SIZE 100

/*-------------------------------------------------------------------------------------------------*/

/*-------------------------------------------------------------------------------------------------*/
/*-NAMESPACES--------------------------------------------------------------------------------------*/
/*-------------------------------------------------------------------------------------------------*/

using namespace std;

/*-------------------------------------------------------------------------------------------------*/

/*-------------------------------------------------------------------------------------------------*/
/*-FUNCTION-PROTOTYPES-----------------------------------------------------------------------------*/
/*-------------------------------------------------------------------------------------------------*/

/* The function respectively gets the target number, the array and the size of the array.
 * It returns 1 if a subset of the array can sum up to the target number
 * and otherwise if it is not possible it outputs a 0.                                             */
int CheckSumPossibility(int num, int arr[], int size);

/*-------------------------------------------------------------------------------------------------*/

/*-------------------------------------------------------------------------------------------------*/
/*-MAIN--------------------------------------------------------------------------------------------*/
/*-------------------------------------------------------------------------------------------------*/

int main()
{
	int arraySize;
	int arr[MAX_SIZE];
	int num;
	int returnVal;
	
	cin >> arraySize;
	cin >> num;
	
	for(int i = 0; i < arraySize; ++i)
	{
		cin >> arr[i];
	}
	
	returnVal = CheckSumPossibility(num, arr, arraySize);
	
	if(returnVal == 1)
	{
		cout << "Possible!" << endl;
	}
	else
	{
		cout << "Not possible!" << endl;
	}
	
	return 0;
}

/*-------------------------------------------------------------------------------------------------*/

/*-------------------------------------------------------------------------------------------------*/
/*-FUNCTION-IMPLEMENTATIONS------------------------------------------------------------------------*/
/*-------------------------------------------------------------------------------------------------*/

/* The function respectively gets the target number, the array and the size of the array.
 * It returns 1 if a subset of the array can sum up to the target number
 * and otherwise if it is not possible it outputs a 0.                                             */
int CheckSumPossibility(int num, int arr[], int size)
{
	/* if the number is zero, pass */
    if (num == 0)
        return 1;

	/* if the size is zero, pass */
    if (size == 0)
        return 0;

	/* if the element of array is bigger then target number, pass */
    if (arr[size - 1] > num)
        return CheckSumPossibility(num, arr, size-1);

	/* check if sum can be obtained by including the last element
      or check if sum can be obtained by excluding the last element */
    return CheckSumPossibility(num, arr, size-1) || CheckSumPossibility(num - arr[size - 1], arr, size-1);
}

/*-------------------------------------------------------------------------------------------------*/
