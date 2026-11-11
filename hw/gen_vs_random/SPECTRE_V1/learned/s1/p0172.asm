.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
and al, 33
sbb bl, dl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 65
adc sil, -77
mov bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
