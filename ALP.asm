; Program to read memory content from address 4200H and write it to memory address 4000H
; Repeat the process for all memory addresses in the range 4200H to 4250H

ORG 0000H ; Start of program

START:  MVI C, 00H ; Initialize loop counter to 00H
LOOP:   MOV A, C ; Load memory address 42XXH (XX in C)
        ADD A, 00H ; Add 00H to A, setting higher byte of address to 42H
        MOV L, A ; Load low byte of address into L register
        MVI H, 42H ; Load high byte of address into H register
        MOV A, M ; Read memory content at address 42XXH into accumulator
        STA 4000H ; Store accumulator content to memory address 4000H
        INX C ; Increment loop counter to move to next memory address
        CPI 51H ; Check if loop counter has reached 51H (end of range)
        JZ END ; If counter equals 51H, end program
        JMP LOOP ; Otherwise, repeat the process for next memory address

END:    HLT ; End of program

END START ; End of program, start address
