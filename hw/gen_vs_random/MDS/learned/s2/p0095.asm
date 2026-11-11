.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 43
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
xor al, dl
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
test dl, -95
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and dil, dil
and dl, dl
xor sil, 94
test dl, 9
or cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
