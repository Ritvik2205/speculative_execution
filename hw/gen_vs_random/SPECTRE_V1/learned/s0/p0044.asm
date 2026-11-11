.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
adc al, -92
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
test dl, -36
lea esi, qword ptr [rcx]
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
sub bx, 24
cmp dl, sil
sub al, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
