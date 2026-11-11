.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edi
and rdi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdi]
or edi, -88
and al, -82 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rcx
bt esi, 3
xor al, al
xor ax, -1005
or al, -24
not esi
bts bx, 3
cmovz rbx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdi]
test rax, rdx
cmovbe di, ax
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and dl, 1 # instrumentation
cmovl ax, si
and eax, 366961170
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
