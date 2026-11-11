.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
sbb cl, al
and rdi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
bt eax, 78
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
sbb sil, al
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
