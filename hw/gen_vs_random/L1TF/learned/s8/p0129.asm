.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, 113
add al, 93
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
add al, -102
jmp .bb_0.1
.bb_0.1:
sets al
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -58
add cl, sil
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
adc al, -103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
