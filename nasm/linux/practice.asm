section .data
  msg1 db "Nhap so thu nhat: ", 0
  msg2 db "Nhap so thu hai: ", 0
  msg3 db "Tong hai so la: " 

section .bss
  num1 resb 5 ; khai báo 5 bytes cho num1
  num2 resb 5 ; khai báo 5 bytes cho num2

section .text
  global _start

_start:

  ; in ra thông báo nhập số 1
  mov eax, 4
  mov ebx, 1
  mov ecx, msg1
  mov edx, len_msg1
  syscall
  
  ; đọc số 1 từ bàn phím
  mov eax, 3
  mov ebx, 2
  mov ecx, num1
  mov edx, 5
  syscall

  ; in ra thông báo nhập số 2
  mov eax, 4
  mov ebx, 1
  mov ecx, msg2
  mov edx, len_msg2  
  syscall

  ; đọc số 2 từ bàn phím
  mov eax, 3
  mov ebx, 2
  mov ecx, num2
  mov edx, 5
  syscall

  ; chuyển num1 và num2 sang số (bỏ ký tự xuống dòng)
  sub byte [num1 + 4], 0Ah  
  sub byte [num2 + 4], 0Ah

  ; chuyển num1 và num2 sang số nguyên 
  mov eax, [num1]
  sub eax, '0'  
  mov ebx, [num2]
  sub ebx, '0'

  ; cộng 2 số vừa nhập
  add eax, ebx

  ; in ra thông báo kết quả
  mov ecx, msg3
  mov edx, len_msg3
  mov ebx, 1
  mov eax, 4
  syscall

  ; in ra kết quả 
  mov ecx, eax
  add ecx, '0'  
  mov edx, 1
  mov ebx, 1  
  mov eax, 4
  syscall

  mov eax, 1
  mov ebx, 0
  syscall

section .data
  len_msg1 equ $-msg1
  len_msg2 equ $-msg2
  len_msg3 equ $-msg3
  