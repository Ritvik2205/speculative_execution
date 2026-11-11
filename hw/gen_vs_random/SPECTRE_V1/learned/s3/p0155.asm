.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 15
cmp ecx, 39
sbb bl, -41
xor rcx, rsi
lea bx, qword ptr [rdi]
and cl, dl
setz cl
sub sil, -18
test cl, -62
adc dil, 28
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
