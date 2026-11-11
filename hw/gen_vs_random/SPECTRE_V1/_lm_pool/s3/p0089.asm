.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
inc rbx
add dl, 47
and bl, sil
sub cl, al
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 61
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
cmovnp cx, si
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
sbb bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
