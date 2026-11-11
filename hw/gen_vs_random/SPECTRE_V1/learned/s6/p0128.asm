.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 24
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
adc ax, 24404
mov dl, al
jp .bb_0.2
jmp .exit_0
.bb_0.2:
test bl, -8
lea ax, qword ptr [rbx + rdx + 32397]
or eax, -126
and sil, 52
sub cl, sil
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
