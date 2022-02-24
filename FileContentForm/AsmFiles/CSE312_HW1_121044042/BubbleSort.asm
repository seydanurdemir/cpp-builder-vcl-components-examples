#---------------------------------------data#

.data

#---------------------------------------word#

arraySize   :
			.word 10
givenArray  :
			.word 0 3 2 5 1 8 7 9 4 6

#---------------------------------------asciiz#

filename    :
			.asciiz "\nBubbleSort.asm\n"
description :
			.asciiz "Sorts the given integers in increasing order as bubble sort algorithm.\n"
newline     :
			.asciiz "\n"
space       :
			.asciiz " "
unsorted    :
			.asciiz "Unsorted array : "
sorted      :
			.asciiz "Sorted array   : "

#---------------------------------------text#

.text

#---------------------------------------globl#

.globl main3

#---------------------------------------label#

main3       :

			la $a0, filename            # a0 = filename
			li $v0, 4                   # print string
			syscall                     # syscall

			la $a0, description         # a0 = description
			li $v0, 4                   # print string
			syscall                     # syscall
			
			la $a0, unsorted            # a0 = unsorted
			li $v0, 4                   # print string
			syscall                     # syscall
			
			lw $s0, arraySize           # s0 = array size
			la $t0, givenArray          # t0 = given array [0]
			add $t1, $zero, $zero       # t1 = 0

			jal printArray
			
			la $a0, newline             # a0 = newline
			li $v0, 4                   # print string
			syscall                     # syscall
			
			lw $s0, arraySize           # s0 = array size
			la $a0, givenArray          # a0 = given array [0]
			add $t0, $zero, $zero       # t0 = 0
			addi $a1, $s0, 1            # a1 = s0 + 1
			
			jal bubbleSort              # procedure call bubbleSort
			
			la $a0, sorted              # a0 = sorted
			li $v0, 4                   # print string
			syscall                     # syscall

			lw $s0, arraySize           # s0 = array size
			la $t0, givenArray          # t0 = given array [0]
			add $t1, $zero, $zero       # t1 = 0

			jal printArray

			la $a0, newline             # a0 = newline
			li $v0, 4                   # print string
			syscall                     # syscall

#---------------------------------------label#

exit        :

			li $v0, 10                  # exit
			syscall                     # syscall

#---------------------------------------procedure#

printArray  :

			lw $a0, 0($t0)              # a0 = t0[0]
			li $v0, 1                   # print int
			syscall                     # syscall

			la $a0, space               # a0 = space
			li $v0, 4                   # print string
			syscall                     # syscall

			addi $t0, $t0, 4            # t0+=4
			addi $t1, $t1, 1            # t1++
			bne $s0, $t1, printArray    # go back print array

endPrint    :

			jr $ra

bubbleSort  :

			add $t0, $zero, $zero      # t0 = 0

outerLoop   :

			addi $t0, $t0, 1           # t0++
			bgt $t0, $a1, endProcedure # if (t0 > a1) then ends procedure

			add $t1, $a1, $zero        # t1 = a1

innerLoop   :

			bge $t0, $t1, outerLoop    # if (t0 >= t1) then outer loop
			                           # NOTE : that means these are already ordered
			addi $t1, $t1, -1          # t1--
			
			mul $t4, $t1, 4            # t4 = t1 * 4 array [t1]
			addi $t3, $t4, -4          # t3 = t4 - 4 array [t1-1]
			
			add $t7, $t4, $a0          # t7 = t4 + a0 array [t1]
			add $t8, $t3, $a0          # t8 = t3 + a0 array [t1-1]
			
			lw $t5, 0($t7)             # t5 = t7 [0] array [t1]
			lw $t6, 0($t8)             # t6 = t8 [0] array [t1-1]
			
			bgt $t5, $t6, innerLoop    # if (t6 > t5) then inner loop
			
			sw $t5, 0($t8)             # t7 [0] = t5 array [t1-1]
			sw $t6, 0($t7)             # t8 [0] = t6 array [t1]

			j innerLoop                # go back loop 2

endProcedure:

			jr $ra                      # end of the procedure, returns where does the program remain
