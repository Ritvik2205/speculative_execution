.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, bx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rdx]
xor edi, 65
xor sil, -14
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edx
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
or bl, al
or rsi, rdi
and cl, 51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
test rdi, 16
bts rdi, rbx
jmp .bb_0.1
.bb_0.1:
and sil, -40 # instrumentation
cmovp esi, esi
and dil, 49 # instrumentation
cmovp rsi, rdi
cmovnle bx, bx
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
or sil, -78
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
and cl, 9 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
