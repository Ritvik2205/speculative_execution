.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], bx
test dl, dl
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
and al, 49
btr edi, 221
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
test sil, 41
btr ax, 193
cmovo edx, edx
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ebx
jmp .bb_0.1
.bb_0.1:
cmovns rsi, rax
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
cmovns rcx, rdx
and rcx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
and ax, -12519
and al, 57 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
