.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, di
test sil, bl
sub bl, sil
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
cmp dil, sil
test rax, 1469613902
cmp dl, al
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
js .bb_0.1
jmp .exit_0
.bb_0.1:
xor al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
