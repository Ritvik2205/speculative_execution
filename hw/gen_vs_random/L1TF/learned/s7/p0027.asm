.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
xor esi, 80
inc rax
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
xor bl, dl
jmp .bb_0.2
.bb_0.2:
test sil, 29
jmp .bb_0.3
.bb_0.3:
and ax, dx
add al, 117
and rdi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdi]
cmp al, 27
sbb sil, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
