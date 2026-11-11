.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 39
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -21
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -51
jmp .bb_0.1
.bb_0.1:
imul rbx
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
or al, -48
and cl, 36
jmp .bb_0.2
.bb_0.2:
or al, -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
