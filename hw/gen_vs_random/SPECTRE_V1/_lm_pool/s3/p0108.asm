.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
sub al, -1
and rsi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rsi]
test sil, 13
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], bl
test bl, -8
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
sub al, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
