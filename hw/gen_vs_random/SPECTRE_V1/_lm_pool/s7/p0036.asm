.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -103 # instrumentation
cmovbe si, si
sub al, dil
adc dx, -112
and al, -54
and rax, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdi]
add al, al
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
add edi, -91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
