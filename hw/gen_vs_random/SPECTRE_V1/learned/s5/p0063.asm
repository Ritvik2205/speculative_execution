.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ecx
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], bl
sub al, cl
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
or dx, 44
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
jmp .bb_0.1
.bb_0.1:
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
lea bx, qword ptr [rdi + rdx]
sub al, -82
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
sub al, dl
add cl, -127
and bx, -118
or ax, 18658
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
