.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
jmp .bb_0.1
.bb_0.1:
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
test cl, 33
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
cmovs di, bx
and cl, cl
bt eax, edi
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
and edi, 2
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
