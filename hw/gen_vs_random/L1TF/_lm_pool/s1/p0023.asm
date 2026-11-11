.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
test dil, -126
jmp .bb_0.1
.bb_0.1:
test dl, dil
add al, -102
test al, dil
and al, al
jmp .bb_0.2
.bb_0.2:
add sil, -61
lea dx, qword ptr [rbx]
cmp dil, 54
or si, 46
or cl, -78
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
