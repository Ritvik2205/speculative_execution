.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, dl
sbb bl, -41
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea rsi, qword ptr [rdx + rbx + 46]
sbb ecx, 58
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
or al, 19
sub sil, -18
and bl, -43
add al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
