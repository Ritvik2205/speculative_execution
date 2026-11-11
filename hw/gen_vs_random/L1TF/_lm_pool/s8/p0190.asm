.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
sub al, -3
or cl, -78
xor dl, dil
add al, 117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
