.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, cx
cmp bl, cl
jmp .bb_0.1
.bb_0.1:
add dil, cl
xor cl, dl
adc bl, -58
cmp sil, cl
cmp si, 109
and rsi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rsi]
xchg edi, ebx
or dx, 24
sub dil, al
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
