.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rax, rcx
and al, bl
cmp cl, -89
setb al
cmp cl, -89
sub edi, 56
cmp dil, bl
and dil, -22
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 53
sbb cx, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
