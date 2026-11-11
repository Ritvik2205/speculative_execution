.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 50
sbb dl, bl
sub al, dil
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jno .bb_0.2
jmp .exit_0
.bb_0.2:
add dl, 47
sbb bl, al
lea ax, qword ptr [rcx]
xchg edi, edx
and rax, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rax]
and cl, cl
lea rbx, qword ptr [rdi]
setns al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
