.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -6
sbb sil, -78
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
cmp bl, dl
sbb sil, -78
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and dil, dil
sub cx, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
