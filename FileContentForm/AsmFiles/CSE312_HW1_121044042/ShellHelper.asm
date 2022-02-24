.data

menuMessage : .asciiz "\n[>] Welcome SPIM OS\n" 
menuMessage1 : .asciiz "[1] ShowPrimes.asm\n" 
menuMessage2 : .asciiz "[2] Factorize.asm\n" 
menuMessage3 : .asciiz "[3] BubbleSort.asm\n" 
menuMessage4 : .asciiz "[4] Exit Program\n" 
menuMessage5 : .asciiz "[>] " 
filename1 : .asciiz "ShowPrimes.asm" 
filename2 : .asciiz "Factorize.asm" 
filename3 : .asciiz "BubbleSort.asm" 
exitMessage : .asciiz "Exiting..." 
newline : .asciiz "\n" 

.text

.globl main

main:
		# Beginning
		addiu  $sp,$sp,-32
		sd      $fp,24($sp)
		move    $fp,$sp
		sw      $0,0($fp)

		b       .L2
.L5:
		# Prints Menu
		la $a0, menuMessage 
		li $v0, 4 
		syscall 
		la $a0, menuMessage1 
		li $v0, 4 
		syscall 
		la $a0, menuMessage2 
		li $v0, 4 
		syscall 
		la $a0, menuMessage3 
		li $v0, 4 
		syscall 
		la $a0, menuMessage4 
		li $v0, 4 
		syscall 
		la $a0, menuMessage5 
		li $v0, 4 
		syscall 
		
		# Takes Input
		li $v0, 5 
		syscall 
		sw $v0, 0($fp) 
		
		# Prints Newline
		la $a0, newline 
		li $v0, 4 
		syscall 
		
		# Show Primes
		lw      $3,0($fp)
		li      $2,1                        # 0x1
		bne     $3,$2,.L3
		
		la $a0, filename1 
		li $v0, 4 
		syscall 
		li $v0, 18
		syscall
		
		b       .L2
		
		# Factorize
.L3:
		lw      $3,0($fp)
		li      $2,2                        # 0x2
		bne     $3,$2,.L4
		
		la $a0, filename2 
		li $v0, 4 
		syscall 
		li $v0, 18
		syscall
		
		b       .L2
		
		# Bubble Sort
.L4:
		lw      $3,0($fp)
		li      $2,3                        # 0x3
		bne     $3,$2,.L2
		
		la $a0, filename3 
		li $v0, 4 
		syscall 
		li $v0, 18
		syscall
		
		# Exit Program
.L2:
		
		lw      $3,0($fp)
		li      $2,4                        # 0x4
		bne     $3,$2,.L5
		li $v0, 10 
		syscall 
		
		# Ending
		nop
		move    $sp,$fp
		ld      $fp,24($sp)
		addiu  $sp,$sp,32
		j       $31
