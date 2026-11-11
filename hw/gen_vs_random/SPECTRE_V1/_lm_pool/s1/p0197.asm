.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, dil
or eax, -1161451853
and dil, -93
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
sbb al, 49
add al, dl
inc eax
jmp .bb_0.1
.bb_0.1:
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
sub al, dl
sbb cl, 105
sbb sil, -78
xor sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
