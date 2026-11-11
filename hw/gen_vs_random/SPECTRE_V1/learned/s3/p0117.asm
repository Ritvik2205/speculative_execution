.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp dl, dil
cmp rax, 900122030
test al, -71
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
add al, -109
mov al, bl
sub bl, -19
jl .bb_0.3
jmp .exit_0
.bb_0.3:
lea ecx, qword ptr [rbx]
sbb al, bl
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], cl
xor al, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
