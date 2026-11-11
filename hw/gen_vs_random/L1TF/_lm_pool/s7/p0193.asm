.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], -106
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
cmp bl, dil
jp .bb_0.2
jmp .exit_0
.bb_0.2:
xor al, 16
adc bl, al
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
