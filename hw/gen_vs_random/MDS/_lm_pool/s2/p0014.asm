.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dil
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
xor rax, -1657511731
and bx, 2
and dil, -39
xor rdi, -9
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
and cl, cl
and dil, dil
test dl, -119
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
xor sil, 110
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
test rsi, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
