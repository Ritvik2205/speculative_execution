.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx esi, cx
add al, 93
sub bl, -96
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
or dl, -67
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
xor cx, 113
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 8
sub cl, 86
jmp .bb_0.2
.bb_0.2:
xor cx, 113
adc dl, -12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
