.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
or di, 0b1000000000000000 # instrumentation
bsf di, di
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
cmovle eax, ecx
and dl, 113 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 34
cmovle edx, eax
bt ebx, ecx
test dl, 25
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdx]
cmovb dx, dx
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
cmovno edi, ecx
xor sil, dil
and rdx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdx]
or al, -8
and bl, -55 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
test sil, 81
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
