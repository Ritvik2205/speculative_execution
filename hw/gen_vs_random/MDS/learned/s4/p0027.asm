.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -24
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
xor sil, 27
test al, 127
and dil, cl
xor sil, -126
xor rdi, -9
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
xor sil, cl
test al, -7
and bl, 68
xor sil, -46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
