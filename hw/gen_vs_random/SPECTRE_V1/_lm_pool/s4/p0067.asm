.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
or al, bl
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
not ebx
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
js .bb_0.2
jmp .exit_0
.bb_0.2:
and al, -54
lea rbx, qword ptr [rdi + rax + 45]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
