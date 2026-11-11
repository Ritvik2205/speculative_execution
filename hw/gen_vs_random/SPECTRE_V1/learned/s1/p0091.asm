.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], dx
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
inc dl
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rax]
jp .bb_0.3
jmp .bb_0.4
.bb_0.3:
jp .bb_0.4
jmp .exit_0
.bb_0.4:
movzx edx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
