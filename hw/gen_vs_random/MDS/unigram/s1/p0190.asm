.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 32
btc rax, rdx
and al, -61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rsi]
and ax, -22368
and bl, -30 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdx]
cmovle eax, ebx
and rcx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rcx]
xor sil, sil
and ax, -22368
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 69
cmovb ax, ax
cmovnl eax, edx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 87
test rdi, 93
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 37
cmovnz rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
