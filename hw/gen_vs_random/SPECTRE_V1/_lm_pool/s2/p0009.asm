.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
add al, 10
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
and dil, -93
cdq
sub al, dil
add dl, al
lea eax, qword ptr [rsi]
setz al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
