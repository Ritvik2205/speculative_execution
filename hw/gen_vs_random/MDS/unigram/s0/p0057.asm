.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdx]
and al, -115 # instrumentation
cmovl di, ax
or eax, -1642752131
or bl, sil
and rdx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 86
and dl, -7
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
xor edi, 38
jmp .bb_0.1
.bb_0.1:
test rdi, 89
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
bt edx, edx
and rax, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rax]
test cl, 32
bts ecx, 26
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -16
test al, -59
cmovle cx, cx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
cmovnbe esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
