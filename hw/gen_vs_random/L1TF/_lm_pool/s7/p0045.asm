.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
mov cl, 13
mov dl, al
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
and dl, 10
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
add ax, 32140
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
