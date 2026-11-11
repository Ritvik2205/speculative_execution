.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rsi]
cmovo edx, esi
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ecx
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 72
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
and rbx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rbx]
and cx, dx
xor sil, dl
xor sil, 110
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rsi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rsi]
and bl, 116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
and dil, -62
or ecx, 66
cmovnbe rcx, rax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rbx]
btr ebx, edx
btr cx, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
