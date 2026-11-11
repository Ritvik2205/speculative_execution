.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, ax
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
sub sil, 71
add al, 19
cmp al, -122
sub al, dil
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi]
sub al, 0
sbb cl, 12
and dil, -120
test dil, -26
dec al
xor al, 118
add al, -32
and cl, -128
not bl
cmovno edx, eax
adc dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
