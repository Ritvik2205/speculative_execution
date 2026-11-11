.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
cmp rbx, 97
cmovno ax, dx
add cl, -127
lea si, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
adc sil, dl
add bl, -95
sub dil, -32
or dil, bl
add ax, 23362
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
