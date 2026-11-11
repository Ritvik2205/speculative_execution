.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, -19
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 55
add bx, -65
test bl, -8
add dl, 47
sub al, bl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp si, -11
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
