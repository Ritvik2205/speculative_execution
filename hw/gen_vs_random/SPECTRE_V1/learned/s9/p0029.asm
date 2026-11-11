.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, 72
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], al
add sil, -68
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
cmp rsi, 53
cmp bl, cl
jp .bb_0.3
jmp .exit_0
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
and ax, 25351
or al, bl
sub sil, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
