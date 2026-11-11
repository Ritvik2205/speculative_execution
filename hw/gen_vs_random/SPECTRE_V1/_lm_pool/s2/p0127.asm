.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
sbb sil, -78
sbb dl, cl
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub sil, dil
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
sub dil, dl
add al, cl
jmp .bb_0.3
.bb_0.3:
test sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
