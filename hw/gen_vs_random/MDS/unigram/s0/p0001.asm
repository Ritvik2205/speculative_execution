.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -111
and rcx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rcx]
bt di, ax
and cl, -49 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdi]
xor rax, -773894210
cmovz di, cx
and dl, 37 # instrumentation
cmovnbe ax, dx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 79
btc rsi, rdi
test sil, -55
jmp .bb_0.1
.bb_0.1:
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ecx
bt esi, edx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 79
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
and al, -70 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
xor cl, al
and bl, al
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
