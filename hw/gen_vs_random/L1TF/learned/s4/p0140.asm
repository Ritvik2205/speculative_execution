.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor si, -50
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
xor dil, -42
or dil, -113
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
cbw
setns dl
movsx ebx, bl
and bl, 89
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
cmp al, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
