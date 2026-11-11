.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
add rsi, -60
sbb eax, 125
mov cl, -72
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rdx + rsi + 28]
sub dl, dil
add al, cl
or rax, -1571963467
sub al, dl
lea eax, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
