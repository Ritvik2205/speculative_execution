.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 29
test cl, 12
and dil, bl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -12952
and sil, -90
cmp sil, -11
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
cmp al, -119
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
