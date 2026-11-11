.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
and dil, al
bt edi, ebx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1
and al, 32 # instrumentation
cmovnbe eax, ecx
xor al, 9
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
xor dl, al
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rbx], eax
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 2
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 5
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
cmovo rbx, rsi
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], ecx
and rsi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rbx]
and bl, sil
bt ecx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
