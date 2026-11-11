.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 8 # instrumentation
cmovz rax, rbx
cmovl rbx, rsi
bt rdi, 36
test bl, dl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
and dl, 48 # instrumentation
cmovz rbx, rdi
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
or ax, -6817
and cl, cl
and rdx, rsi
btr eax, ecx
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rsi], bx
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rsi
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
cmovz rdi, rbx
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rsi
xor rax, -773894210
or ax, -6817
cmovnb ax, dx
and rdi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
btc edi, eax
and bl, -15 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
and edx, -44
and ax, 339
or esi, esi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
btc edi, 230
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 62
not dil
and rdx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
