.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
bts ebx, ebx
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rax]
bt rax, 76
and rsi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rcx]
bt ecx, 13
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
and sil, bl
bt dx, 228
or rcx, -17
and bl, 38 # instrumentation
cmovbe esi, ebx
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
