.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test esi, 425331143
and rax, rcx
test sil, 41
xor al, 99
and dl, -19 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
cmovz edi, edi
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rcx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
xor dl, -19
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
btc rdi, rdi
and al, -114
and bl, -14 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
and cl, 50 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
cmovns rbx, rdx
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
