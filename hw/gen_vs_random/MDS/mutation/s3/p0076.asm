.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl eax, edx
and al, -10 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
btc rsi, 105
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rbx
bts rbx, 56
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -32
and rcx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rcx]
btr cx, 9
btr rsi, rdi
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -69
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rsi], si
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], si
cmovz edx, edx
test eax, -675944960
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
btc esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
