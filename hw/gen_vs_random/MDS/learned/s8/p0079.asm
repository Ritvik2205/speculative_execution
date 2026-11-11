.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
xor cl, 98
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
xor di, -83
test edx, -372470678
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
xor dl, dil
and dl, al
and dil, dl
test dil, 46
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and ebx, 12
and rax, -2058103810
jmp .bb_0.1
.bb_0.1:
test dl, -85
cmovnbe rdi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
