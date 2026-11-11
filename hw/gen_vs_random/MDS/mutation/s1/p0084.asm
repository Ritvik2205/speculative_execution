.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr cx, 136
bts rbx, 25
btc rsi, 80
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -59
cmovl eax, edx
btr rsi, rdi
and rcx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rcx]
and al, -10 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rbx
jmp .bb_0.1
.bb_0.1:
test eax, 424329527
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rsi], si
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], si
cmovz edx, edx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -69
btc esi, ebx
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
