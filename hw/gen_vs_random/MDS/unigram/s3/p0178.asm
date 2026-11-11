.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
not rsi
and sil, 47 # instrumentation
cmovnp esi, eax
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
cmovl ecx, esi
cmovz edx, eax
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
btc rsi, 80
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rsi
test rax, 1978892575
test rsi, 8
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 92
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
and cl, 79
and dl, 91 # instrumentation
cmovnle eax, eax
btr rsi, rdx
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
