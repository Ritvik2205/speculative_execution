.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
cmp dil, bl
test dl, -105
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdi]
adc dx, -112
sub ax, dx
cmp cl, al
mov sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
