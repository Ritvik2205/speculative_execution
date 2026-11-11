.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, 64
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rdi
test bl, -8
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
sub dil, al
add dl, dil
sbb sil, dl
lea ecx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
