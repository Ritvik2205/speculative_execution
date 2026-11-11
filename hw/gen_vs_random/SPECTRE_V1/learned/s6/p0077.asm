.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 12 # instrumentation
cmovnb edi, eax
inc rcx
sbb dil, dl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dl
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
lea rsi, qword ptr [rbx]
sbb cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
