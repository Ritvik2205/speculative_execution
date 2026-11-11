.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, 96
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
sub al, sil
setns cl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
inc dil
and rbx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
lea ax, qword ptr [rsi]
sbb al, -107
or ecx, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
