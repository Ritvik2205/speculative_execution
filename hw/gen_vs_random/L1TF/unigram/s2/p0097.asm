.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 78
imul rcx
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
add dl, 70 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
mov edx, 88
bt ebx, eax
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 122
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -1
add bl, 107 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 89
movzx rbx, bx
and rax, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdx]
and al, al
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
lea di, qword ptr [rbx + rdi + 68]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
