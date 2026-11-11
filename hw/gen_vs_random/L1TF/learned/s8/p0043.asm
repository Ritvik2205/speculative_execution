.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -103 # instrumentation
cmovbe si, si
or dil, -113
sub al, 9
or rdi, 92
jmp .bb_0.1
.bb_0.1:
sub cl, 86
cmp rbx, 12
lea rcx, qword ptr [rax]
jl .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
or cl, sil
adc al, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
