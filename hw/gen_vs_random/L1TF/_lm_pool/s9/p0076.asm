.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
mov sil, 12
test bx, 94
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
adc bl, -14
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
