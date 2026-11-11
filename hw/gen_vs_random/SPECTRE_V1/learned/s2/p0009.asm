.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dil
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
test al, 48
or cl, al
sub dil, dl
sub cl, -47
or dl, cl
adc sil, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
