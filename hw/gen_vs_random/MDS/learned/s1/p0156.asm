.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdi, rbx
cmovb ecx, edi
xor cl, 122
not si
xor al, 78
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 58
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and bl, -34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di
xor cx, dx
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 80
xor cx, 58
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
xor al, -15
or dil, -57
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edi
cmovz cx, ax
xor rsi, 24
and al, 126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
