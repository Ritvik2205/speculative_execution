.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec bx
or dl, bl
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
cmp cl, al
dec cl
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 47
jnle .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
