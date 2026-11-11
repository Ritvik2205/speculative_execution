.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add al, -65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
lea cx, qword ptr [rdi + rbx + 28]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
and cl, 84
or al, sil
adc bl, -14
lea rax, qword ptr [rbx + rdi]
test dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
