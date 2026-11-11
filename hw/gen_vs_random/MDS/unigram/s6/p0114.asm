.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, 193
and al, -72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdi]
btc di, bx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
xor dil, 124
or bl, bl
cmovz rcx, rcx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 79
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
xor sil, -14
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 96
or sil, dl
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
bts bx, si
cmovbe eax, eax
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdi], eax
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
