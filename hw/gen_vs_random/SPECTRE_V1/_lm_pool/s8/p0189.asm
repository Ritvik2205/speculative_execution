.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, 118
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
test dil, -116
add al, 18
and rdx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
add dl, al
sub rax, -1628299544
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
