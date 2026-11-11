.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, -40
test sil, 47
sub cl, bl
jmp .bb_0.1
.bb_0.1:
add cl, sil
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 86
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
