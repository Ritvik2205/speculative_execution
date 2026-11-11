.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rax]
adc cl, -81
sub al, bl
sbb eax, 125
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
sbb dil, dl
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
add bl, bl
cmp dil, -78
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
test si, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
