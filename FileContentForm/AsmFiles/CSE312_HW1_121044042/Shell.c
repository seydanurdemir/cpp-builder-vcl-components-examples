// Type your code here, or load an example.
__asm__ (
    ".data \n"
);

__asm__ (
    "menuMessage : .asciiz \"[>] Welcome SPIM OS\" \n"
    "menuMessage1 : .asciiz \"[1] ShowPrimes.asm\" \n"
    "menuMessage2 : .asciiz \"[2] Factorize.asm\" \n"
    "menuMessage3 : .asciiz \"[3] BubbleSort.asm\" \n"
    "menuMessage4 : .asciiz \"[4] Exit Program\" \n"
    "menuMessage5 : .asciiz \"[>] \" \n"
    "filename1 : .asciiz \"ShowPrimes.asm\" \n"
    "filename2 : .asciiz \"Factorize.asm\" \n"
    "filename3 : .asciiz \"BubbleSort.asm\" \n"
    "exitMessage : .asciiz \"Exiting...\" \n"
    "newline : .asciiz \" \" \n"
);

__asm__ (
    ".text \n"
    ".globl main \n"
);

void main (void)
{
    int input = 0;
    
    while (input != 4)
    {
        __asm__ (
            "la $a0, menuMessage \n"
            "li $v0, 4 \n"
            "syscall \n"
            
            "la $a0, menuMessage1 \n"
            "li $v0, 4 \n"
            "syscall \n"
            
            "la $a0, menuMessage2 \n"
            "li $v0, 4 \n"
            "syscall \n"
            
            "la $a0, menuMessage3 \n"
            "li $v0, 4 \n"
            "syscall \n"
            
            "la $a0, menuMessage4 \n"
            "li $v0, 4 \n"
            "syscall \n"
            
            "la $a0, menuMessage5 \n"
            "li $v0, 4 \n"
            "syscall \n"

            "li $v0, 5 \n"
            "syscall \n"
            "sw $v0, 0($fp) \n"
            
            "la $a0, newline \n"
            "li $v0, 4 \n"
            "syscall \n"
        );
        if (input == 1)
        {
            __asm__ (
                "la $a0, filename1 \n"
                "li $v0, 4 \n"
                "syscall \n"
                "li $v0, 18 \n"
                "syscall \n"
            );
        }
        else if (input == 2)
        {
            __asm__ (
                "la $a0, filename2 \n"
                "li $v0, 4 \n"
                "syscall \n"
                "li $v0, 18 \n"
                "syscall \n"
            );
        }
        else if (input == 3)
        {
            __asm__ (
                "la $a0, filename3 \n"
                "li $v0, 4 \n"
                "syscall \n"
                "li $v0, 18 \n"
                "syscall \n"
            );
        }
    }
    __asm__ (
        "li $v0, 10 \n"
        "syscall \n"
    );
}
