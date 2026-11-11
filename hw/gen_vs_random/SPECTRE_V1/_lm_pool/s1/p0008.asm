.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
xor cl, 71
imul dl
seto cl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdi]
add al, dl
add dil, sil
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
add al, cl
cmp bx, 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
