.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc cl
test al, -71
test al, -75
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi]
cmp al, 23
cmp cl, 19
sbb al, -112
jmp .bb_0.1
.bb_0.1:
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
test di, 45
not esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
