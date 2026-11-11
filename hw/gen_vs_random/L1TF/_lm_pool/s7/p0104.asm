.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 79
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 48
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
and al, -68
or al, dl
or al, bl
jmp .bb_0.1
.bb_0.1:
add dl, 125
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
add al, 93
and dl, dil
or al, -5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
