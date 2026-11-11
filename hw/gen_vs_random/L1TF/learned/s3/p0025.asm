.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ecx
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
mov sil, sil
add cl, 110 # instrumentation
movsx si, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
