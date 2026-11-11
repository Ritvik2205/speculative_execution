.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
xor al, dil
add al, 117
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
sub bl, cl
lea rdx, qword ptr [rax + rsi]
jmp .bb_0.1
.bb_0.1:
sbb al, sil
sbb sil, dil
or rax, -443578116
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
