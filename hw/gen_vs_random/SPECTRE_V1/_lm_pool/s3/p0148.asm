.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
test cl, dil
sbb bl, 79
sub al, sil
cmp rax, 1189904463
lea si, qword ptr [rcx + rdi]
mov bx, 35
sub al, cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub dil, -111
sbb cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
