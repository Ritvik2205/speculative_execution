.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
adc dil, 120
and ax, 7954
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 12
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
add al, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
