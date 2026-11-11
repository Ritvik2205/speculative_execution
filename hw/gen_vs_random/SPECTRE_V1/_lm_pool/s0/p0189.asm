.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 40 # instrumentation
btc rbx, rbx
add al, 18
sbb cl, dil
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
sub al, bl
lea ax, qword ptr [rbx + rsi + 4]
lea si, qword ptr [rdx + rax + 91]
inc bl
lea ax, qword ptr [rdx]
sub bl, -19
sub bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
