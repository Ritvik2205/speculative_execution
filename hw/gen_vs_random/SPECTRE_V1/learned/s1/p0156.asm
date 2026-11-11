.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
adc sil, -77
sbb bl, al
sub cl, sil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -33
setp al
sub dl, bl
and dl, -92
lea rsi, qword ptr [rdi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
