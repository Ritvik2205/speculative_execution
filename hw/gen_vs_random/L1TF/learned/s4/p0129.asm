.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 114
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
xor al, 38
sbb al, 61
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
lea ax, qword ptr [rdx + rdi + 18]
jmp .bb_0.1
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
adc sil, al
jmp .bb_0.3
.bb_0.3:
test dl, 84
xor sil, 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
