section .text
global _start

_start:
mov eax, 4;system call number 4 is write
mov ebx, 1;file descripter (std_out)
mov ecx, msg ;my message
mov edx, 13;length of my message
syscall;call it

; syscall exit(0)
mov eax, 1;system call number 1 is exit()
mov ebx, 0;exit(0)
syscall;call it

section .data
msg db "Hello, world!", 0