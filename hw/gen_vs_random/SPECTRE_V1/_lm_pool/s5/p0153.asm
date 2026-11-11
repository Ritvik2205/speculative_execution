.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rcx, rcx
sbb edx, 105
add sil, -68
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], ebx
jmp .bb_0.1
.bb_0.1:
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -1
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -60
jnle .bb_0.4
jmp .exit_0
.bb_0.4:
sub dil, al
adc dx, -112
sub al, dl
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
