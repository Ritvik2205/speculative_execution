.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 17
cmovnz eax, ecx
bt edi, 225
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rax
test bx, 25542
cmovbe edi, edi
jmp .bb_0.1
.bb_0.1:
cmovz ebx, edx
cmovnbe rax, rdi
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
cmovnle rdx, rcx
or si, 0b1000000000000000 # instrumentation
bsr si, si
and sil, 84 # instrumentation
cmovbe si, bx
or dl, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
