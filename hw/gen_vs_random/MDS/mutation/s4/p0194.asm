.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -10 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
btr cx, 136
cmovl eax, edx
and rcx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rcx]
btr rsi, rdi
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rbx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -32
bts rbx, 25
btc rsi, 105
jmp .bb_0.1
.bb_0.1:
btc esi, ebx
test eax, 424329527
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], si
cmovz edx, edx
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 6
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -69
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rsi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
