section .text
    global _start

_start:
    ; Your assembly code here
    mov     eax, 4        ; System call number for sys_write
    mov     ebx, 1        ; File descriptor for stdout
    mov     ecx, msg      ; Message to print
    mov     edx, msg.len  ; Length of message
    int     0x80          ; Invoke syscall

    mov     eax, 1        ; System call number for sys_exit
    xor     ebx, ebx      ; Exit code 0
    int     0x80          ; Invoke syscall

section .data
msg db 'Hello, world!', 0xA  ; Message to print
