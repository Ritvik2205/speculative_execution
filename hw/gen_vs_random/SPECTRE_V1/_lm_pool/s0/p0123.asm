.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
adc al, -92
test al, cl
test cl, -24
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
add bl, dl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
sbb al, sil
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
