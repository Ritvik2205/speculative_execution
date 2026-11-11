.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rbx, rcx
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
test rbx, 88
and rdi, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rdi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
adc eax, 56
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
adc edx, 36
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
adc cl, -81
sbb al, sil
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
