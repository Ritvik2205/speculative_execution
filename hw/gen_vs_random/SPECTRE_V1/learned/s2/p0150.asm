.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 12 # instrumentation
cmovnb eax, edi
or al, cl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
and dl, dil
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdx]
add dil, 72
and rdi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdi]
sub cx, 22
sub dl, 96
sub sil, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
