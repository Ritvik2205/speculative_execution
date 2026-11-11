.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
or al, dl
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
test cl, -24
test bl, -8
sub sil, cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and dl, -109
test al, -126
sbb al, 49
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 17
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl
and dx, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
