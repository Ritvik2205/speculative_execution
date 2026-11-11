.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, -118
dec dil
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dil
sub dl, al
and dl, -92
test sil, 13
test rbx, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
