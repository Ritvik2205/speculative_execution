.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dil
sbb al, -14
jns .bb_0.1
jmp .exit_0
.bb_0.1:
test bl, -8
test cl, -33
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 51
test bl, -8
sub rax, -1628299544
bt ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
