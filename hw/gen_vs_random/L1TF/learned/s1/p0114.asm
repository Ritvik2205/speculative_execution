.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ecx, eax
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
add al, 93
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
sbb al, 61
jmp .bb_0.1
.bb_0.1:
lea rcx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
