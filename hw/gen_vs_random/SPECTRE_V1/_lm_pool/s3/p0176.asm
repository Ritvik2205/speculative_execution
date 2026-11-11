.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rcx
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
xor ecx, 99
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
jle .bb_0.2
jmp .exit_0
.bb_0.2:
sub al, bl
sbb al, bl
and bl, sil
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
cmp cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
