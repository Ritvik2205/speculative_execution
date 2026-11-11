.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
and dil, cl
jmp .bb_0.1
.bb_0.1:
sbb al, al
sbb bl, -88
jmp .bb_0.2
.bb_0.2:
and eax, -409673666
xor al, dil
adc sil, cl
cmp dl, -56
jmp .bb_0.3
.bb_0.3:
sbb cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
