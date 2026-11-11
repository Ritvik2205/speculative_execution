.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 339
xor cl, 15
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
xor cl, dl
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
test sil, cl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test dl, -95
xor rdi, -9
xor al, 99
xor al, 34
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
