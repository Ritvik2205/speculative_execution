.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -44
sub al, -97
sub al, -47
cmp dil, cl
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
add cl, al
jmp .bb_0.1
.bb_0.1:
sub sil, -99
jmp .bb_0.2
.bb_0.2:
test sil, 29
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
adc bl, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
