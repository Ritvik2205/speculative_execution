.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -86
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
lea eax, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
jl .bb_0.1
jmp .exit_0
.bb_0.1:
xchg al, sil
sub rax, -1628299544
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
sbb dil, -106
test cl, -33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
