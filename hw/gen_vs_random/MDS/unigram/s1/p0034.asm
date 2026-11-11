.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
and rcx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
btc ecx, eax
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
or si, 94
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
cmovnb rdx, rax
cmovnl eax, edx
cmovz si, dx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 91
xor dl, 8
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
btc ecx, 76
xor cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
