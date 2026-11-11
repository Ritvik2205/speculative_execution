.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], ax
xor cl, 93
xor rax, rdx
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], esi
test cl, dil
and rcx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and bl, 76 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rbx]
and cl, -38 # instrumentation
cmovp rcx, rdx
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 2
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, esi
and rbx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
cmovns ebx, ecx
test al, 74
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rcx
and bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
