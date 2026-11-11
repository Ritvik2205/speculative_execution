.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
test dl, al
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 85
bt ax, 84
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rax], di
cmp dx, si
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edi
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
mov si, cx
cmovz bx, bx
sub rdx, 80
lea rdi, qword ptr [rsi + rdi + 49]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 0
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 68
or bx, 0b1000000000000000 # instrumentation
bsf di, bx
bswap esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
