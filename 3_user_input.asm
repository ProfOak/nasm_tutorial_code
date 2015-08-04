section .data
    enter_number db "Please enter a number: "
    len_enter_number equ $-enter_number

    youhaveentered db "You have entered: "
    len_youhaveentered equ $-youhaveentered

section .bss
    num resb 8

section .text
    global _start

_start:
    ; disp "enter a number"
    mov edx, len_enter_number
    mov ecx, enter_number
    mov ebx, 1
    mov eax, 4
    int 0x80

    ; read value (8 bytes)
    mov edx, 8 ; 8 bytes to store
    mov ecx, num
    mov ebx, 2
    mov eax, 3
    int 0x80

    ; disp "You have entered..."
    mov edx, len_youhaveentered
    mov ecx, youhaveentered
    mov ebx, 1
    mov eax, 4
    int 0x80

    ; disp number
    mov edx, 8
    mov ecx, num
    mov ebx, 1
    mov eax, 4
    int 0x80

    ; return 0
    mov ebx, 0
    mov eax, 1
    int 0x80












