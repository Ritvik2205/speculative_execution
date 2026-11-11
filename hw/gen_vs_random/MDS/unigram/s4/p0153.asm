.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
cmovnle esi, edx
cmovo ax, dx
xor al, 34
cmovz edx, edi
btr di, bx
and dil, -99 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edx
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 7
bt bx, di
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdx
cmovnbe ebx, eax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
xor dil, sil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
