.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 67 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
xor dil, -42
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
or al, dil
sbb al, 61
and rcx, 75
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
test dil, -126
jmp .bb_0.2
.bb_0.2:
test cl, 51
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
