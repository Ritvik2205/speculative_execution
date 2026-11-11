.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 86
cmp esi, 39
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnp .bb_0.3
jmp .bb_0.4
.bb_0.3:
jle .bb_0.4
jmp .exit_0
.bb_0.4:
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
sbb sil, dl
lea rdx, qword ptr [rdi + rax + 6]
sbb esi, 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
