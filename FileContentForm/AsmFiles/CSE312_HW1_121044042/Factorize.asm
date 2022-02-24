#---------------------------------------data#

.data

#---------------------------------------asciiz#

filename    :
			.asciiz "\nFactorize.asm\n"
description :
			.asciiz "Finds and shows factors of entered integer.\n"
newline     :
			.asciiz "\n"
comma       :
			.asciiz ","
enterNumber :
			.asciiz "Please enter a number : "
factorOf    :
			.asciiz "factor of "
is          :
			.asciiz " is "

#---------------------------------------text#

.text

#---------------------------------------globl#

.globl main2

#---------------------------------------label#

main2       :

			la $a0, filename            # a0 = filename
			li $v0, 4                   # print string
			syscall                     # syscall

			la $a0, description         # a0 = description
			li $v0, 4                   # print string
			syscall                     # syscall
			
			la $a0, enterNumber         # a0 = enter number
			li $v0, 4                   # print string
			syscall                     # syscall
			
			li $v0, 5                   # read_int
			syscall                     # syscall
			move $t0, $v0               # t0 = v0
			
			la $a0, factorOf            # a0 = factor of
			li $v0, 4                   # print string
			syscall                     # syscall
			
			move $a0, $t0               # a0 = t0
			li $v0, 1                   # print int
			syscall                     # syscall
			
			la $a0, is                  # a0 = is
			li $v0, 4                   # print string
			syscall                     # syscall
			
			ble $t0, 1, exit            # if (number <= 1) then exits program
			
			jal factorize               # procedure call factorize
			
			move $a0, $t0               # a0 = t0
			li $v0, 1                   # print int
			syscall                     # syscall
			
			li $v0, 4                   # a0 = newline
			la $a0, newline             # print string
			syscall                     # syscall
			
#---------------------------------------label#

exit        :

			li $v0, 10                  # exit
			syscall                     # syscall

#---------------------------------------procedure#

factorize  :

			li $s0, 1
			li $s1, 1
			
			j loop                      # go loop
			
loop  :

			move $t1, $t0               # t1 = t0
			move $s1, $s0               # s1 = s0
			div $t1, $s1                # t1 / s1
			mfhi $t2                    # t2 = rem
			beq $t2, $zero, print       # if (t2 == 0) then jump print

			j counter                   # go counter

print      :

			move $a0, $s0               # a0 = s0
			li $v0, 1                   # print int
			syscall                     # syscall
			
			la $a0, comma               # a0 = comma
			li $v0, 4                   # print string
			syscall                     # syscall
			
			j counter                   # go counter

counter    :

			addiu $s0, $s0, 1           # s0++
			beq $t0, $s0, endProcedure  # if (number == s0) then ends procedure

			j loop                      # go loop

endProcedure:
			jr $ra                      # end of the procedure, returns where does the program remain
