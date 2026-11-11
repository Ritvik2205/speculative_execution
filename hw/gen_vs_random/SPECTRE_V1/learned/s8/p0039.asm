.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
mul rcx
xor sil, sil
and rax, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rax]
sub cl, dil
add bl, dl
adc dil, sil
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and ax, -22629
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
