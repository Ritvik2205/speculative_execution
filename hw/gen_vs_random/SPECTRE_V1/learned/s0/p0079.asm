.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], bx
cmp edx, 44
xor dil, dil
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
sub dl, -12
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 99
and sil, 111
add al, -47
test sil, 47
adc cl, -81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
