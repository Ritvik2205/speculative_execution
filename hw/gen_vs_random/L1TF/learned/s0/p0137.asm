.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 104 # instrumentation
mov ecx, 37
sbb esi, 67
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
test dil, -126
and rax, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rax]
test al, 15
adc bl, 86
add cx, 68
sub al, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
