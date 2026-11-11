.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 11
lea cx, qword ptr [rsi]
sub al, dl
sub di, 73
sub cl, -47
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add dil, 72
and rax, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rax]
lea ax, qword ptr [rbx + rdx + 32397]
setb dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
