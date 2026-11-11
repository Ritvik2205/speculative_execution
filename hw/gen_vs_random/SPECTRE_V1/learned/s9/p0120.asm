.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dil
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 51
sbb dil, -93
xor dil, -37
or al, 19
lea edi, qword ptr [rax]
test bl, -8
lea eax, qword ptr [rbx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and al, cl
and al, dil
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
