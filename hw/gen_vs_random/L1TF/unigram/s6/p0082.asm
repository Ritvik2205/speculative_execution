.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
bswap rax
xchg dil, dil
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 7
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
xchg edi, ecx
imul rcx
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
sub bl, -96
lea edx, qword ptr [rdx + rsi + 56]
and rdi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdi], 79
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 29
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 98
xor ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
