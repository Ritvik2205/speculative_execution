.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
adc al, dil
and rax, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rax]
xor dil, -42
jmp .bb_0.1
.bb_0.1:
lea si, qword ptr [rsi]
add sil, cl
jmp .bb_0.2
.bb_0.2:
add sil, 88 # instrumentation
sbb sil, 3
or bl, cl
adc bl, -14
cmp al, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
