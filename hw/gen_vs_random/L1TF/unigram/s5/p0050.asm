.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz bx, di
and cl, 46
test cl, 10
neg ebx
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rax
and rax, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rax]
test dil, sil
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], 9
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
cmp ebx, ebx
sbb cl, -11
xor si, -50
xor bx, 89
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
