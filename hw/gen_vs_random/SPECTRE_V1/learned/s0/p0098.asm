.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 21910
or cl, dl
adc ax, 24404
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 10
dec al
test ax, -32457
cmp bl, dl
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
sub sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
