.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 86 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
xchg edx, ecx
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
or dil, sil
and rax, -109
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 75
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
