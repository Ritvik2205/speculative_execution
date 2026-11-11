.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 32514
sub cl, sil
sub cl, bl
add al, 10
sub al, dil
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
test al, -99
jle .bb_0.2
jmp .exit_0
.bb_0.2:
add dl, 47
and dil, 98
and rcx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rcx], 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
