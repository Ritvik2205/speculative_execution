.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rax, rax
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
xor dil, -3
or edi, -88
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
xor si, 80
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
or cl, 6
jmp .bb_0.2
.bb_0.2:
bts rbx, 115
test sil, 17
or al, bl
xor bx, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
