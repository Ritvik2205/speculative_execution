.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rcx
sbb bl, 79
or al, 19
or bl, sil
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub cl, dl
and cl, sil
xor eax, -105
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
test al, dl
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
jnbe .bb_0.3
jmp .exit_0
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
