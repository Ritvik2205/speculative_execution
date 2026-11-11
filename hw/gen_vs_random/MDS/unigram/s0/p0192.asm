.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rbx
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
bts dx, 50
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], dx
or bl, -62
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
and cl, 114 # instrumentation
cmovz bx, di
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
bt eax, 151
bt ecx, esi
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and al, 42 # instrumentation
cmovz eax, edi
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
xor dil, sil
test dl, al
cmovnbe eax, edx
xor dl, -43
or dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
