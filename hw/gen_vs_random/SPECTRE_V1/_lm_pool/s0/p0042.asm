.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, dx
sub al, 63
sbb edi, 4
cmp rsi, 53
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 51
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, -273199823
jp .bb_0.2
jmp .exit_0
.bb_0.2:
sub al, sil
sub cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
