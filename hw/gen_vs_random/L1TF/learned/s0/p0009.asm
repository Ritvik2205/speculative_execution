.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
test al, -32
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
adc cl, dl
or ecx, 45
jmp .bb_0.1
.bb_0.1:
sub al, -3
jmp .bb_0.2
.bb_0.2:
sbb cl, dil
jmp .bb_0.3
.bb_0.3:
test dil, -126
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 124
lea ax, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
