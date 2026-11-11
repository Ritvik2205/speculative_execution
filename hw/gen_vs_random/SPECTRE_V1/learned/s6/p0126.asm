.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
add al, 3
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
sbb al, dil
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
test dil, -116
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
jno .bb_0.2
jmp .exit_0
.bb_0.2:
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
