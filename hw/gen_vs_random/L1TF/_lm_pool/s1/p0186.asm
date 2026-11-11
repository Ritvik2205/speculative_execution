.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
sbb sil, -19
or cl, -78
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 17
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
and ebx, 108
xor dil, cl
sub dil, -39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
