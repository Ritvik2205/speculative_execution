.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
sub bl, cl
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
mov dl, sil
sbb al, dil
and sil, dl
lea ax, qword ptr [rcx]
add sil, cl
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
sbb sil, -78
jnp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
