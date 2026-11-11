.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -5889
xor cl, 15
cmovns di, cx
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
cmovnbe rdx, rdi
cmovnz rax, rdi
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
not dl
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
bts eax, 222
and cl, 52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
xor dil, cl
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
bt rax, rax
xor al, 34
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
and dl, 84 # instrumentation
cmovl rax, rdi
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edi
and rcx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rcx]
cmovz si, di
or al, al
btr ebx, 0
and cl, 114 # instrumentation
cmovz dx, si
cmovo dx, dx
and rbx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rbx]
cmovnle cx, si
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
