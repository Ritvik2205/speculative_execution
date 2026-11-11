.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
setp al
adc sil, 76
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
cmp dil, 95
and rdi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdi]
sub bl, dl
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
sbb sil, -79
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], -2
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
