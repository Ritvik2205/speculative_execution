.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -62
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
sub al, cl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rdx + rdi + 15]
test sil, 13
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
adc eax, 56
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
add dl, dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
