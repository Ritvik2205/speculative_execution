.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, 52
setp dl
sub al, 63
sub sil, cl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
test dil, -116
jnbe .bb_0.2
jmp .bb_0.3
.bb_0.2:
jle .bb_0.3
jmp .bb_0.4
.bb_0.3:
lea rdi, qword ptr [rsi + rax + 6]
lea ax, qword ptr [rdx + rcx + 43552]
jp .bb_0.4
jmp .exit_0
.bb_0.4:
mov dl, cl
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
lea rax, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
