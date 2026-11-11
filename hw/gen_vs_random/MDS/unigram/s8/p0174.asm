.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 56
btc esi, ecx
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rbx], eax
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], ax
and dl, -73
xor cl, sil
xor dl, 34
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rcx]
bts bx, 3
bts edi, 248
xor sil, cl
cmovl rbx, rdx
cmovnz ecx, edx
cmovns rax, rax
and rax, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rax]
and edx, -44
test al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
