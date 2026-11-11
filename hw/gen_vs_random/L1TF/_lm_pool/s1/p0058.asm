.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
xor rax, 20
sbb cl, sil
setb al
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
sub al, -47
sbb ecx, 59
or al, -48
jmp .bb_0.1
.bb_0.1:
test al, -84
and cx, -79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
