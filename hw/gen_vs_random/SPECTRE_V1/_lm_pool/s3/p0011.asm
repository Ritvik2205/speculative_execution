.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
sub dl, 71
cmp cl, sil
test dil, -116
add cl, sil
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea eax, qword ptr [rdi]
and dl, sil
sub dl, bl
jp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
