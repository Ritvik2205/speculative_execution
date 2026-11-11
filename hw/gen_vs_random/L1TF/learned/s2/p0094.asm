.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
and rdx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rbx]
or dl, -67
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
or al, -5
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 36
not sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
