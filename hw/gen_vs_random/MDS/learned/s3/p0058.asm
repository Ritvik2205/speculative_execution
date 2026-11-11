.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, bl
not dil
cmovnb rbx, rdi
xor al, 9
xor dil, sil
or rax, -141551502
xor al, dl
and sil, sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 98
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and dl, cl
xor cl, 98
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
