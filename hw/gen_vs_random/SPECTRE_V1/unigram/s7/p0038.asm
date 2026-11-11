.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rsi
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 52
bswap rcx
cmovnb rdx, rbx
test cl, al
and rdx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdx]
lea si, qword ptr [rbx + rcx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sub cx, bx
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 33
sbb al, -107
lea dx, qword ptr [rbx + rsi]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rax
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
bt edi, 121
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
