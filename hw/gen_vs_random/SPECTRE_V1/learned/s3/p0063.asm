.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, sil
adc dil, 40
sub al, -82
mov al, bl
add sil, -68
mov bl, sil
and rsi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rsi]
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
