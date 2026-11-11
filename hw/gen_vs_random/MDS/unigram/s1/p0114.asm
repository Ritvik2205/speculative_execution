.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
xor dx, 84
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
and ax, -16061
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and bl, 3 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
cmovbe cx, ax
cmovle si, dx
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 8
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rbx
and bl, al
and bl, -120 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rdx]
and dl, -73
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 29
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rax]
cmovnle rdx, rcx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], -86
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
