.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 33
sbb al, bl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
add dl, cl
adc cl, bl
cmp dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
