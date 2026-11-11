.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
add bl, 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
