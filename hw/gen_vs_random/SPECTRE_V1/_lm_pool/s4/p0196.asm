.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 51
sub cl, -21
lea cx, qword ptr [rcx + rdx]
and di, 35
sbb cl, 105
lea rbx, qword ptr [rcx + rdi + 11]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
