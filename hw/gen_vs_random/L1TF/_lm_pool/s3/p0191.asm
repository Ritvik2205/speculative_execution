.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
add al, -102
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 106
or al, -2
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
or rdx, -22
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 56
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
lea rsi, qword ptr [rdi + rdx + 59]
neg rbx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
