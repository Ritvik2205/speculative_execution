.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -71 # instrumentation
adc eax, eax
add al, -80
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 7
test cl, 88
test dl, 84
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], sil
add dil, cl
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
sbb dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
