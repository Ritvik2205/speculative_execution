.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdi]
and dl, 1 # instrumentation
cmovl ax, si
cmovbe di, ax
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edi
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
xor al, al
bt esi, 3
or edi, -88
and al, -82 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rcx
bts bx, 3
xor ax, -6793
and eax, 33
test rax, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdi]
cmovz rbx, rdi
not esi
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
or al, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
