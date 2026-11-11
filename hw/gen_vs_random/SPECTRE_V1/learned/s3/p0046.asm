.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
mov bl, cl
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
add al, cl
and bl, al
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -24
adc dl, bl
cmp al, 13
movsx di, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
