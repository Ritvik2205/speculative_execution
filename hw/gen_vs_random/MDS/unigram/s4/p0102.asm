.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno eax, ebx
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
cmovbe si, ax
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rcx
cmovnp ecx, esi
and rax, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rax]
test rdi, 96
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 72
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
jmp .bb_0.1
.bb_0.1:
btc rax, rdi
cmovnb rcx, rcx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
and cl, 113 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdi]
and al, dil
and rcx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rcx]
and bl, -30 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ecx
and bl, -55 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], edx
cmovz edi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
