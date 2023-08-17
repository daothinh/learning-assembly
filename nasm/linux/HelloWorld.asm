section .bss


section .data
    hello: db "Hello, World!", 10
    helloLen: equ $ - hello


section .text
    global _start ; entry point

    _start:
        mov rax, 1  ; sys_write
        mov rdi, 1  ; stdout
        mov rsi, hello  ; buf
        mov rdx, helloLen   ; len
        syscall ; write(1, hello, helloLen)

        ; end program
        mov rax, 60 ; sys_exit
        mov rdi, 0  ; exit code
        syscall ; exit(0)
    