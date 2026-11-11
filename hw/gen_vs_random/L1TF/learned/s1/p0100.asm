.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, cl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and al, -68
jmp .bb_0.3
.bb_0.3:
test dl, -37
jp .bb_0.4
jmp .exit_0
.bb_0.4:
or rbx, 18
xor sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
