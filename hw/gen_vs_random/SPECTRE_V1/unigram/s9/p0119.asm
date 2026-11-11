.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe cx, bx
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
add cl, 46 # instrumentation
sbb rax, -91
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
sub al, dil
and dil, sil
and rdi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rax]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rax
test dl, -105
or eax, esi
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 93
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dil
imul ecx, eax, 71
imul edi
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
