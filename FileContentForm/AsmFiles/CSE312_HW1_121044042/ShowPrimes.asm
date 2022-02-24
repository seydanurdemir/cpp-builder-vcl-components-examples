#---------------------------------------data#

.data

#---------------------------------------asciiz#

filename    :
			.asciiz "\nShowPrimes.asm\n"
description :
			.asciiz "Prints all integers from 0 to 1000, prints prime next to prime numbers.\n"
newline     :
			.asciiz "\n"
prime       :
			.asciiz " prime\n"

#---------------------------------------text#

.text

#---------------------------------------globl#

.globl main1

#---------------------------------------label#

main1       :

			la $a0, filename            # a0 = filename
			li $v0, 4                   # print string
			syscall                     # syscall

			la $a0, description         # a0 = description
			li $v0, 4                   # print string
			syscall                     # syscall
			
			li $a0, 0                   # a0 = 0
			li $v0, 1                   # print integer
			syscall                     # syscall
			
			la $a0, newline             # a0 = newline
			li $v0, 4                   # print string
			syscall                     # syscall
			
			li $a0, 1                   # a0 = 1
			li $v0, 1                   # print integer
			syscall                     # syscall
			
			li $v0, 4                   # a0 = newline
			la $a0, newline             # print string
			syscall                     # syscall
			
			li $s0, 2                   # s0 = 2
			li $t0, 1001                # t0 = 1001
			
			ble $t0, 2, exit            # if (toNumber <= 2) then exits program
			
			jal showPrimes              # procedure call showPrimes
			
#---------------------------------------label#

exit        :

			li $v0, 10                  # exit
			syscall                     # syscall

#---------------------------------------procedure#

showPrimes  :

			li $s1, 0                   # s1 = 0
			li $s2, 2                   # s2 = 2

			j innerLoop                 # start inner loop

counter     :

			addiu $s0, $s0, 1           # s0++
			beq $t0, $s0, endProcedure  # if (toNumber == s0) then ends procedure

			j showPrimes                # go back outer loop

innerLoop   :

			beq $s2, $s0, ifPrime       # if (s2 == s0) then jump if prime
			div $s0, $s2                # s0 / s2
			mfhi $t1                    # t1 = remainder (hi)
			beq $t1, $zero, primeFlag   # if (t1 == 0) then jump prime flag
			                            # NOTE : if hi is zero that means number is not prime
			addiu $s2, $s2, 1           # s2++

			j innerLoop                 # go inner loop and continue loop

primeFlag   :

			li $s1, 1                   # s1 = 1
			                            # NOTE : sets flag that means number is not prime
			addiu $s2, $s2, 1           # s2++

			j innerLoop                 # go back inner loop

ifPrime     :

			move $a0, $s0               # a0 = s0
			li $v0, 1                   # print integer
			syscall                     # syscall
			
			beq $s1, $zero, printPrime  # if (s1 == 0) then jump print prime
			                            # NOTE : if s1 is 0 that means number is prime
			bne $s1, $zero, print       # if (s1 != 0) then jump print prime
			                            # NOTE : if s1 is not 0 (is 1) that means number is not prime

			j counter                   # go counter

printPrime  :

			la $a0, prime               # a0 = prime
			li $v0, 4                   # print string
			syscall                     # syscall

			j counter                   # go counter

print       :

			la $a0, newline             # a0 = newline
			li $v0, 4                   # print string
			syscall

			j counter                   # go counter

endProcedure:
			jr $ra                      # end of the procedure, returns where does the program remain
