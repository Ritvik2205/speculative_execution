.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
cmovns ecx, edi
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 19
and cl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdi]
cmovns esi, edi
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 100
cmovnbe cx, dx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
bt ecx, ecx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rsi]
or ax, 19243
cmovnle edi, ebx
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
cmovnl cx, si
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 9
and cl, bl
or esi, edx
or dl, -115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
