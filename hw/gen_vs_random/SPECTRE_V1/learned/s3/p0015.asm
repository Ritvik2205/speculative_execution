.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
sub al, dl
sub dl, -48
sub cl, sil
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -70
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, 11
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
sbb al, dl
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dil
cmp dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
