.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 86
sub al, dil
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, eax
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -24
setns bl
and rax, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rax]
xchg bl, sil
add dil, -75
not ecx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
