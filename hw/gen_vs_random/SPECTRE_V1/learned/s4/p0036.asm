.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
sub al, -1
test cl, -33
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 97
imul al
add dil, 72
sub al, -82
lea ax, qword ptr [rdi + rsi + 51]
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
sub ax, -15315
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
