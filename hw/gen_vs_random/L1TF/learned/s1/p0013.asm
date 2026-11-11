.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov bl, cl
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 7
lea ax, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], cl
adc sil, 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
