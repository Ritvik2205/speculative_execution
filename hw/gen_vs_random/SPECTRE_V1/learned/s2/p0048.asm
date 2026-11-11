.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
imul al
and dl, -92
and rdi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdi]
cmp bl, sil
mov sil, bl
mov dl, bl
sbb rdi, 17
sub dil, -32
sub rax, -1628299544
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
