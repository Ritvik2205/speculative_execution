.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 86 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
inc sil
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], 56
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
sub al, bl
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
sub sil, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
