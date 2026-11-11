.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
sub bl, 15
setb dil
lea ax, qword ptr [rax + rsi]
sub rdi, 9
jmp .bb_0.1
.bb_0.1:
or al, -57
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
or cl, dil
mov al, -101
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
or al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
