.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 67
sbb edi, -94
and sil, -84
adc bl, 127
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
add al, -29
adc cl, 31
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
adc sil, dl
mov cl, dil
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
and dil, 8
sub al, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
