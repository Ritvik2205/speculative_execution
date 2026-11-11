.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 21910
cmp eax, 692647572
sbb eax, 100
sub dil, -32
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
sbb bl, -41
sbb al, cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
adc edi, 54
and rdi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdi]
not eax
sub dil, sil
lea edi, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
