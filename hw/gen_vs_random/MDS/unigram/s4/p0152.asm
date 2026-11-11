.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 5
and cl, al
cmovnle ebx, eax
xor al, 9
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and bx, si
xor rsi, -117
and cl, 51 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
cmovnz ecx, esi
or al, 24
or edi, edx
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ebx
and rax, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rax], ax
cmovnbe rdi, rsi
and sil, 23 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
