.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dil
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
xor al, cl
sub al, cl
lea ax, qword ptr [rcx + rdi + 17]
test edi, 98
xor cl, dil
test dil, sil
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
