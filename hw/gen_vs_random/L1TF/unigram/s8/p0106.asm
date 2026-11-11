.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 106
lea edx, qword ptr [rsi + rax]
xchg eax, edx
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rax
test esi, 25
setb al
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 125
add eax, 871834813
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi], 86
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -58
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
or cl, 105
or ebx, 97
and bx, 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
