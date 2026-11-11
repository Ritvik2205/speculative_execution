.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 32540
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
lea ax, qword ptr [rbx + rcx + 91]
jb .bb_0.3
jmp .bb_0.4
.bb_0.3:
jnbe .bb_0.4
jmp .exit_0
.bb_0.4:
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
and rax, 2134929425
sub bx, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
