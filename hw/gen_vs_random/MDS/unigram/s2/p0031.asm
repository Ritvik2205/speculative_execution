.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 72
and rsi, 70
xor al, 77
cmovz edi, eax
test dl, cl
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rax
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
and dl, bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
and dl, sil
and dl, -1 # instrumentation
cmovnb ax, dx
or dil, sil
cmovb rcx, rsi
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdi
test cl, cl
bt rax, 89
bt eax, 22
and sil, -2 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
