.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 74
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
test sil, 13
jmp .bb_0.1
.bb_0.1:
add cl, -127
and rax, -175411684
jb .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 60
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
test dx, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
