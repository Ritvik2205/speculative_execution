.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 39
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 54
xor bl, -38
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rdx]
sub al, 63
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
adc eax, 34
sbb al, -112
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
