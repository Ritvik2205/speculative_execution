.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rdx, -49
add dil, -84
and rax, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rax]
cmp rax, 40
mov bl, dil
xor bl, -126
cmp sil, 127
test cl, dil
adc dil, 112
or bl, dl
test dl, cl
and rcx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rcx]
or dl, dil
or cx, -74
or dil, al
xor cl, dil
neg dil
or dl, 71
sbb dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
