.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rsi]
or al, -24
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], ax
jmp .bb_0.1
.bb_0.1:
bts rbx, 25
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
test dil, -80
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 99
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
and rdx, 67
xor sil, cl
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
or al, 25
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
xor dil, -70
test dl, -85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
