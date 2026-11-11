.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rbx]
test sil, -31
sbb cl, sil
and cl, dil
adc edi, 31
sbb bl, dl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
