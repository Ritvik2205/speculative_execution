.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
cmp rcx, 17
add al, -72
sub rax, -1628299544
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
test dil, -116
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
js .bb_0.3
jmp .exit_0
.bb_0.3:
sub dl, -12
mov cl, dl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 41
add bl, cl
xor bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
