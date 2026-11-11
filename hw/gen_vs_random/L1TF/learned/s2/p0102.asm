.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
sbb dl, bl
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
test dil, -126
test cl, dil
jmp .bb_0.1
.bb_0.1:
and dl, dl
and ax, 26813
jmp .bb_0.2
.bb_0.2:
add bl, cl
jmp .bb_0.3
.bb_0.3:
and cl, 26
sbb dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
