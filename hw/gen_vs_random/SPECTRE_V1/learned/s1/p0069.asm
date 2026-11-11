.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov sil, dl
add al, -72
cmp rsi, 53
test dil, -116
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb cl, 105
jp .bb_0.2
jmp .exit_0
.bb_0.2:
add dl, cl
mov bl, bl
lea ebx, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
