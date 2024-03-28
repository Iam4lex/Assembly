section .data
    ; Define a constant value to store the memory location
    result_address equ 4030h

section .text
    global _start

_start:
    ; Load the value from memory location 4030H into register RSI
    mov rsi, result_address

    ; Zero extend AL into RAX to clear the upper bits
    movzx rax, al

    ; Subtract the value in register BL from AL (now in RAX)
    sub rax, rbx

    ; Store the result in the memory location pointed by RSI
    mov [rsi], rax   ; Store the entire RAX register

    ; Terminate the program
    mov eax, 60     ; syscall number for sys_exit
    xor edi, edi    ; exit code 0
    syscall         ; call kernel
