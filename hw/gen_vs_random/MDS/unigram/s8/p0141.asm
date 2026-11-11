.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not edx
and cl, -23 # instrumentation
cmovno ecx, esi
and dl, 91 # instrumentation
cmovnle ebx, ebx
xor dil, cl
cmovnp rax, rdx
and bl, 26 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
bts rcx, 15
btr eax, 51
btr dx, si
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
test dl, dl
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], ax
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
test ecx, -1843375753
and cl, -83 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], cx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
cmovz ax, bx
or dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
