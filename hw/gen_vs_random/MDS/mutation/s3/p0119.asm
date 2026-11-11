.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -53 # instrumentation
cmovbe edi, eax
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rsi
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
test bl, 65
bts rax, 77
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rax], si
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
test rdi, rax
xor dil, sil
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
xor rcx, 71
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rsi]
and al, 57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
bts esi, esi
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 38
xor edx, 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
