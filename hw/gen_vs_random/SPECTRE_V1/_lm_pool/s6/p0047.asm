.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rcx, rcx
lea cx, qword ptr [rbx + rsi]
setz cl
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
and rax, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rax]
test bl, -8
jl .bb_0.2
jmp .exit_0
.bb_0.2:
lea cx, qword ptr [rax + rdi]
xor al, -119
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
lea rsi, qword ptr [rdx + rcx + 36993]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
