.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts si, si
cmp rdx, -19
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb edx, -8
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
and al, bl
xor al, 54
add al, 18
sub al, sil
and bl, 87
adc bx, 39
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
