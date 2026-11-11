.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 91
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 61
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
sub sil, cl
sbb bl, dl
or eax, -126
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
