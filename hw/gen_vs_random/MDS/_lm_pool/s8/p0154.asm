.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
test bl, 65
or dil, dil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and si, -121
test ax, dx
not dl
jmp .bb_0.1
.bb_0.1:
xor cx, -18
or bl, bl
bt di, dx
test sil, -96
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
test esi, 1857129931
cmovle cx, ax
or al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
