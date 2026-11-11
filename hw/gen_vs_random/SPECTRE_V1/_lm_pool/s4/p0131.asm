.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
mov cl, dil
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
adc cx, -30
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov dl, bl
test bl, -8
lea ax, qword ptr [rdi + rbx + 26]
and al, -54
jmp .bb_0.2
.bb_0.2:
test cl, -33
cmp bl, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
