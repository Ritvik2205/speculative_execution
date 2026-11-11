.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, al
and al, -82 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rbx]
bts bx, 3
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edi
test rax, rdx
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rcx
and dl, 1 # instrumentation
cmovl ax, si
or al, 74
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and eax, -829294476
xor ax, 31969
or edi, -88
and rdi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdi]
cmovz rbx, rdi
cmovbe di, ax
bt esi, 3
not esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
