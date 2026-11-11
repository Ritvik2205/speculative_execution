.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, cl
cmp rbx, 64
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
sub al, sil
sbb sil, al
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea di, qword ptr [rbx + rdi + 75]
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
adc sil, -77
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
