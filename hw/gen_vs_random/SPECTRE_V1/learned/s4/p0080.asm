.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
test bl, -8
and dil, al
xor al, 78
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
add cl, sil
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
add al, dl
sbb bl, 79
adc dil, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
