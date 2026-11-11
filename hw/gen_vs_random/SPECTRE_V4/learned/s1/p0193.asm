.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, -40
cmp dil, 101
movzx cx, sil
add rax, -1121139858
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
or cl, 83
and rcx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rcx]
add al, -1
or sil, dl
cmp rdx, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
