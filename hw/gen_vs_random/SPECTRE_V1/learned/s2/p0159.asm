.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 7
add dil, dil
sbb al, -107
loopne .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, al
jmp .bb_0.2
.bb_0.2:
sbb al, 33
cmp cl, al
sbb eax, 125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
