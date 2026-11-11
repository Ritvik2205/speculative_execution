.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 40 # instrumentation
btc rcx, rcx
mul rcx
test bl, -8
xor ecx, 73
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, cl
lea dx, qword ptr [rax + rbx + 90]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
xor dl, 71
sub cl, dil
imul dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
