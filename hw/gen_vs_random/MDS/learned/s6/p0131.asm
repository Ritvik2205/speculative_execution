.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -96
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
bts rsi, 205
xor al, cl
or cl, -36
bt ax, dx
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ebx
test sil, -55
xor rax, -91
xor dl, sil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], esi
and sil, -69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
