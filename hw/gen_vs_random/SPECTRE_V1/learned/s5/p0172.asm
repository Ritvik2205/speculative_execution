.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -34
sub al, -82
lea di, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
sbb ecx, 27
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb ebx, 96
add dl, 47
test cl, -120
lea si, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
