.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg eax, edx
and cl, dil
test dl, -125
or di, 29
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and dil, dil
adc ecx, 55
sub dl, cl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
or al, bl
sub al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
