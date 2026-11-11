.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 9
or bl, dl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
xor ax, -1005
or al, 74
and bl, 68
xor cx, -18
bt edi, 17
test rax, 1978892575
test al, -7
test sil, -96
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], -53
bt si, cx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
