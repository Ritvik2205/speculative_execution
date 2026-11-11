.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, 34
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
or dil, 80
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
inc ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
