.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
cmp rax, 1189904463
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb bl, cl
sub rax, -1628299544
js .bb_0.2
jmp .exit_0
.bb_0.2:
add bl, 70
bswap rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
