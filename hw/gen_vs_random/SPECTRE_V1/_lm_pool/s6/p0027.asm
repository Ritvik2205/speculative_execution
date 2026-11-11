.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
setno bl
add rax, 977059290
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
jnp .bb_0.3
jmp .bb_0.4
.bb_0.3:
jnp .bb_0.4
jmp .bb_0.5
.bb_0.4:
bt edi, 134
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
jp .bb_0.5
jmp .exit_0
.bb_0.5:
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
neg rcx
xor cx, 39
sub al, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
