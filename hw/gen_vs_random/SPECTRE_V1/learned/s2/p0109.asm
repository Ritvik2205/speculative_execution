.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 32514
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and cl, -57
lea rax, qword ptr [rdx]
test sil, -31
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmovno dx, ax
sub al, bl
add ecx, 100
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
