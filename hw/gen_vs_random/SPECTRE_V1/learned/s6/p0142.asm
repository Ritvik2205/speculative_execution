.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, di
sub dl, bl
adc cx, -30
sbb al, dl
and dl, dil
sub bl, dl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp di, 94
btr si, di
sbb dl, dil
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
cmp cl, 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
