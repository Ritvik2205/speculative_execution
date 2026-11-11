.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 9
setp dl
sbb sil, cl
sub cl, al
cmp dl, -93
mov dl, al
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 61
test al, -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
