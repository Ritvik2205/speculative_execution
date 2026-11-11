.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -71 # instrumentation
adc edx, edx
test bl, 45
test cl, 87
test dl, bl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
sub dl, cl
jmp .bb_0.3
.bb_0.3:
sbb bl, dl
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
neg al
or dil, al
test eax, 645518295
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
