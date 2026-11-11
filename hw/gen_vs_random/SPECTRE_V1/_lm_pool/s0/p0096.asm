.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 86 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
xchg edi, ebx
sub dil, cl
lea rax, qword ptr [rbx]
adc sil, -77
jmp .bb_0.1
.bb_0.1:
xor ax, 913
adc cl, -19
lea bx, qword ptr [rdi + rbx + 24]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
