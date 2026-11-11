.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
sub bl, cl
sbb sil, -79
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
test ax, 13284
or dil, dl
and dl, dl
jmp .bb_0.1
.bb_0.1:
add bl, -113 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdi]
test sil, 29
test bx, 28
jmp .bb_0.2
.bb_0.2:
xor dil, -42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
