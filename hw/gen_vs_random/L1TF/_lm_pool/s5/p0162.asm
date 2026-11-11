.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rcx]
add al, bl
xor cl, 89
or ax, 11821
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb sil, cl
add ax, 1313
xor bl, cl
sub sil, -99
sub cl, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
