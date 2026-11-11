.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
sub al, -89
setz al
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
sub dl, -48
xchg dl, cl
test dl, -7
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
jnle .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
