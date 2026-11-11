.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rsi]
cmp dil, 93
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
or ax, -10161
and dil, cl
not cl
jmp .bb_0.1
.bb_0.1:
setle al
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
adc bl, 86
sub dl, dil
sbb al, -50
mov sil, sil
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
