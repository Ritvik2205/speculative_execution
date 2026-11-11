.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, ecx
cmp edi, 70
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
jno .bb_0.2
jmp .exit_0
.bb_0.2:
sbb dl, cl
setz al
and dl, -109
sub al, -82
sub al, cl
adc dl, 107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
