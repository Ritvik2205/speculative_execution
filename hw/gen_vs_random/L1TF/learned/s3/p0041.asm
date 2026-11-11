.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 12 # instrumentation
cmovnb edx, esi
xor cl, dl
and bl, 89
adc dil, 120
cmp dil, dl
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
add al, -102
or rdi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
