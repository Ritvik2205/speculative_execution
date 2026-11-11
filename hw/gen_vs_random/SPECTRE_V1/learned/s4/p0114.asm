.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
lea ax, qword ptr [rdi + rdx + 66]
inc dil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
sub al, dl
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
test cl, -120
xor al, sil
and rax, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rax]
js .bb_0.3
jmp .exit_0
.bb_0.3:
sub al, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
