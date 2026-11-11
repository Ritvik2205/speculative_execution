.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 38 # instrumentation
setp cl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], cl
mul al
lea edx, qword ptr [rdx]
cmovp bx, bx
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rdx, -19
xor cl, dil
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], ax
sbb cl, al
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
xor rbx, 50
adc rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
