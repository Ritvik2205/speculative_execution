.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edx, eax
or dil, -113
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
dec al
and dil, -22
xor dl, cl
jmp .bb_0.1
.bb_0.1:
sbb dil, sil
and bl, 89
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
lea rdi, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
