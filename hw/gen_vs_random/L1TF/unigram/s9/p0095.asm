.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rdx]
dec bx
cmp eax, 39856325
cmovz ecx, edi
and rdx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdx]
add al, 31 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax], 76
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
xor cl, dil
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
add bl, 10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 66
add eax, 109
cdq
xor cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
