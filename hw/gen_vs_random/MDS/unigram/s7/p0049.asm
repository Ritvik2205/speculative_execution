.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -71
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 4
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rax
and dl, 113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
or bl, al
cmovnbe rcx, rdx
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
test rdx, 4
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 49
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rbx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rbx]
xor rdx, rcx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 74
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
test dil, dl
cmovnle bx, ax
bts ebx, 205
cmovnz edi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
