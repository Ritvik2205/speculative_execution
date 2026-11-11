.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -82
adc cl, -19
xor cl, cl
sub bl, al
add al, 10
xor dil, bl
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
add bl, dl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
