.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dil
sbb cl, 105
lea edx, qword ptr [rdi + rdi + 28]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
test bl, -8
and sil, -55
sbb dl, dil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
