.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
sbb al, 61
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 65
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
or di, di
btr rax, rdx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], cx
xor dil, -42
cmovnl si, bx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 124
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
add cl, bl
mov esi, -1776760885
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
