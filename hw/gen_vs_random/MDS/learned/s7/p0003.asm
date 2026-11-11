.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], ax
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
xor cl, 55
xor sil, 94
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
or dil, sil
test dl, 9
xor rax, -270810088
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
xor dl, al
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
