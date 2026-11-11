.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, bl
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdi]
adc al, -82
jl .bb_0.2
jmp .exit_0
.bb_0.2:
sub al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
