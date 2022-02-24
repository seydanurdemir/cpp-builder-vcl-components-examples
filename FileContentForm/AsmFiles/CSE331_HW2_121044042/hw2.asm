#-------------------------------------------------------------------------------------------------#
#-DESCRIPTION-------------------------------------------------------------------------------------#
#-------------------------------------------------------------------------------------------------#

# GEBZE TECHNICAL UNIVERSITY, FACULTY OF ENGINEERING, DEPARTMENT OF COMPUTER ENGINEERING          #
# CSE 331, COMPUTER ORGANIZATION (FALL 2020) COURSE                                               #
# HOMEWORK 1 (CHECKSUMPROBABILITY PROCEDURE IN MIPS ASSEMBLY LANGUAGE) - ASM PART                 #
# STUDENT NAME    : SEYDA NUR                                                                     #
# STUDENT SURNAME : DEMIR                                                                         #
# STUDENT NUMBER  : 12 10 44 042                                                                  #

#-------------------------------------------------------------------------------------------------#

#-------------------------------------------------------------------------------------------------#
#-PROGRAM-INFO------------------------------------------------------------------------------------#
#-------------------------------------------------------------------------------------------------#

# In this assignment you will write a MIPS assembly program                                       #
# and test it using MARS instruction set simulator.                                               #
# You will be given an integer array arr and a number num.                                        #
# The task is to find if a subset of array elements can sum up to the target num.                 #
# If not possible you will output "Not possible!".                                                #
# If it is possible, output "Possible!".                                                          #
# You can use every array element only once.                                                      #
# Only positive integers are allowed as array elements.                                           #
# Finding only one combination is enough to output "Possible!".                                   #

#-------------------------------------------------------------------------------------------------#

#-------------------------------------------------------------------------------------------------#
#-NAMING------------------------------------------------------------------------------------------#
#-------------------------------------------------------------------------------------------------#

# Label size    : array size                                                                      #
# Label num     : target number                                                                   #
# Label arr     : array                                                                           #
# Label maxsize : array maximum size                                                              #

# Register $a0  : load address                                                                    #
# Register $v0  : syscall parameters                                                              #

# Register $a1  : array size                                                                      #
# Register $a2  : target number                                                                   #
# Register $t8  : maximum array size                                                              #
# Register $t9  : maximum target number                                                           #
# Register $a3  : array                                                                           #
# Register $v1  : procedure return value                                                          #
# Register $xx  : possible subset (bonus)                                                         #

# Register $t0  : temporary                                                                       #
# Register $t1  : array index counter                                                             #
# Register $t4  : array offset                                                                    #
# Register $t7  : slt rd                                                                          #

# For other details, please read report.                                                          #

#-------------------------------------------------------------------------------------------------#

#-------------------------------------------------------------------------------------------------#
#-SAMPLE-VALUES-----------------------------------------------------------------------------------#
#-------------------------------------------------------------------------------------------------#

# arraysize    : .word 8
# targetnumber : .word 129
# samplearray1 : .word 41, 67, 34, 0,  69, 24, 78, 58   # Not possible!
# samplearray2 : .word 62, 64, 5,  45, 81, 27, 61, 91   # Not possible!
# samplearray3 : .word 95, 42, 27, 36, 91, 4,  2,  53   # Possible! (36 91 2)
# samplearray4 : .word 92, 82, 21, 16, 18, 95, 47, 26   # Possible! (92 21 16)
# samplearray5 : .word 71, 38, 69, 12, 67, 99, 35, 94   # Possible! (35 94)
# samplearray6 : .word 3,  11, 22, 33, 73, 64, 41, 11   # Not possible!

#-------------------------------------------------------------------------------------------------#

#-------------------------------------------------------------------------------------------------#
#-DATA--------------------------------------------------------------------------------------------#
#-------------------------------------------------------------------------------------------------#

.data

#-------------------------------------------------------------------------------------------------#

#-------------------------------------------------------------------------------------------------#
#-SPACE-------------------------------------------------------------------------------------------#
#-------------------------------------------------------------------------------------------------#

size         : .space 4
num          : .space 4
arr          : .space 400

#-------------------------------------------------------------------------------------------------#

#-------------------------------------------------------------------------------------------------#
#-WORD--------------------------------------------------------------------------------------------#
#-------------------------------------------------------------------------------------------------#

maxsize      : .word 101                      # maxsize 100
maxnum       : .word 100000                   # maxnum 

#-------------------------------------------------------------------------------------------------#

#-------------------------------------------------------------------------------------------------#
#-ASCIIZ------------------------------------------------------------------------------------------#
#-------------------------------------------------------------------------------------------------#

msgsize      : .asciiz "\nEnter Array Size    : "
msgnum       : .asciiz "\nEnter Target Number : "
msgarr       : .asciiz "\nEnter Array Element : "
msgpos       : .asciiz "\nPossible !\n"
msgnotpos    : .asciiz "\nNot possible !\n"

#-------------------------------------------------------------------------------------------------#

#-------------------------------------------------------------------------------------------------#
#-TEXT--------------------------------------------------------------------------------------------#
#-------------------------------------------------------------------------------------------------#

.text

#-------------------------------------------------------------------------------------------------#

#-------------------------------------------------------------------------------------------------#
#-GLOBAL------------------------------------------------------------------------------------------#
#-------------------------------------------------------------------------------------------------#

.globl main

#-------------------------------------------------------------------------------------------------#

#-------------------------------------------------------------------------------------------------#
#-MAIN--------------------------------------------------------------------------------------------#
#-------------------------------------------------------------------------------------------------#

# Main Procedure
main :

# Load addresses and words of labels to registers
la $a1, size
la $a2, num
la $a3, arr
lw $t8, maxsize
lw $t9, maxnum

# Enter Array Size
la $a0, msgsize                               # label size
li $v0, 4                                     # print_string
syscall                                       # syscall

# Read Array Size
li $v0, 5                                     # read_int
syscall                                       # syscall

# Set Array Size Value
move $a1, $v0                                 # $a1 = $v0
sw $a1, size                                  # mem[size] = $a1

# Check Entered Array Size If It is Negative or Not
slt $t7, $zero, $a1                           # (0 < size) ? continue : exit
beq $t7, $zero, exit                          # (0 >= size) ? exit

# Check Entered Array Size If Lower Than Maximum Array Size or Not
slt $t7, $a1, $t8                             # (size < maxsize) ? continue : exit
beq $t7, $zero, exit                          # (size >= maxsize) ? exit

# Enter Target Number
la $a0, msgnum                                # label num
li $v0, 4                                     # print_string
syscall                                       # syscall

# Read Target Number
li $v0, 5                                     # read_int
syscall                                       # syscall

# Set Target Number Value
move $a2, $v0                                 # $a2 = $v0
sw $a2, num                                   # mem[num] = $a2

# Check Entered Target Number If It is Negative or Not
slt $t7, $zero, $a2                           # (0 < num) ? continue : exit
beq $t7, $zero, exit                          # (0 >= num) ? exit

# Check Entered Target Number If Lower Than Maximum Target Number or Not
slt $t7, $a2, $t9                             # (num < maxnum) ? continue : exit
beq $t7, $zero, exit                          # (num >= maxnum) ? exit

# Initialize Index Counter For Loop
addi $t1, $zero, -1                           # $t1 = -1

# Temporary Array Size
addi $t0, $a1, -1                             # $t0 = size - 1

readarrayvalues :

# Calculate Index Counter and Array Offset
addi $t1, $t1, 1                              # $t1 = $t1 + 1
sll $t4, $t1, 2                               # $t4 = $t1 * 4

# Enter Array Element
la $a0, msgarr                                # label arr
li $v0, 4                                     # print_string
syscall                                       # syscall

# Read Array Element
li $v0, 5                                     # read_int
syscall                                       # syscall

# Set Array Element Value
move $t3, $v0                                 # $t3 = $v0
sw $t3, arr($t4)                              # arr[$t1] = $t3

# Control Loop Until Index Counter Equal To Array Size
bne $t1, $t0, readarrayvalues                 # (i == temporarysize) ? continue : loop

# Procedure Call
jal checksumpossibility                       # procedure call

# If Else Statement
beq $v1, $zero, else                          # (returnVal != 0) ? possible : notpossible

# If Case
if :

# Print Possible
la $a0, msgpos                                # label msgpos
li $v0, 4                                     # print_string
syscall                                       # syscall

# Go Exit
j exit

# Else Case
else :

# Print Not Possible
la $a0, msgnotpos                             # label msgnotpos
li $v0, 4                                     # print_string
syscall                                       # syscall

# Go Exit
j exit

# End Program
exit :

# Exit
li $v0, 10                                    # exit
syscall                                       # syscall

#-------------------------------------------------------------------------------------------------#

#-------------------------------------------------------------------------------------------------#
#-PROCEDURE---------------------------------------------------------------------------------------#
#-------------------------------------------------------------------------------------------------#

# Initiliaze registers before procedure part because of recursive

# int returnVal -> $v1 = 0
# int num -> $a2 -> label num -> $s2
# int arr[] -> $a3 -> label arr -> $s3
# int size -> $a1 -> label size -> $s1

addi $v1, $zero, 0                            # returnVal = 0
addi $s2, $a2, 0                              # $s2 = $a2 (num)
addi $s3, $a3, 0                              # $s3 = $a3 (arr)
addi $s1, $a1, 0                              # $s1 = $a1 (size)

# C CODE
# int CheckSumPossibility(int num, int arr[], int size)
checksumpossibility :

# C CODE
# if (num == 0) return 1;
basecase1 :
beq $s2, $zero, return1                       # (num == 0) ? return1 : continue

# C CODE
# if (size == 0) return 0;
basecase2 :
beq $s1, $zero, return0                       # (size == 0) ? return0 : continue

# C CODE
# if (arr[size - 1] > num) return CheckSumPossibility(num, arr, size-1);
basecase3:
addi $s5, $s1, -1                             # $s5 = size - 1
sll $t4, $s5, 2                               # $t4 = $s5 * 4
lw $s0, arr($t4)                              # $s0 = arr($t4)
slt $t7, $s2, $s0                             # (num < arr[size-1]) ? returncase3 : go lastcase
beq $t7, $zero, lastcase                      # go lastcase
addi $s1, $s1, -1                             # size = size - 1
jal checksumpossibility                       # recursive call with num arr size-1

# C CODE
# return CheckSumPossibility(num, arr, size-1) || CheckSumPossibility(num - arr[size - 1], arr, size-1);
lastcase :
addi $s1, $s1, -1                             # size = size - 1
jal checksumpossibility                       # recursive call with num arr size-1
addi $s5, $s1, 0                              # $s5 = size
sll $t4, $s5, 2                               # $t4 = $s5 * 4
lw $s0, arr($t4)                              # $s0 = arr($t4)
add $s2, $s2, $s0                            # num = num - arr[size-1]
jal checksumpossibility                       # recursive call with num arr size-1
or $s4, $s4, $ra


return1 :
addi $s4, $zero, 1                            # $s4 = 1
j return                                      # jump return

return0 :
addi $s4, $zero, 0                            # $s4 = 0
j return                                      # jump return

return :
# Return now 1 or 0
addi $v1, $s4, 0                              # $v1 = $s4
# Jump and Return
jr $ra                                        # return

#-------------------------------------------------------------------------------------------------#
