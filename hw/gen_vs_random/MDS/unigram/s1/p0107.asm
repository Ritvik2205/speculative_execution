.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, rdx
xor eax, 984871847
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 14
test rcx, -613256812
or al, al
btr edi, esi
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
cmovno rsi, rsi
or ebx, esi
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
and dl, 72 # instrumentation
cmovz edx, ebx
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 69
and sil, sil
btc eax, edi
test dil, 46
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 38
and cl, -49 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
