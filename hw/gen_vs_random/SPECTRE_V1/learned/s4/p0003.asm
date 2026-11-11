.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 13
add bl, -95
add rsi, 109
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdi]
sub al, dl
jmp .bb_0.1
.bb_0.1:
mov sil, dl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 61
lea ax, qword ptr [rbx + rsi + 60]
adc sil, -77
mov bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
