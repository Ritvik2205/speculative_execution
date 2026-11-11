.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 43
cmp al, -78
or al, -83
adc cl, al
xor dil, cl
movsx cx, bl
xor al, sil
or ax, -13633
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
add bl, cl
sbb cl, 35
sbb al, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
