.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
or di, 0b1000000000000000 # instrumentation
bsf di, di
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rax]
and cl, 34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rcx]
xor rdx, -59
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edi
and cl, -36 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
xor sil, al
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edx, eax
cmovnb rcx, rbx
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -65
cmovz si, si
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], esi
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
cmovnp esi, edi
xor dil, -70
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
