.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
and ax, -13240
lea ax, qword ptr [rbx + rdx + 32397]
cmp cl, 72
sub dl, bl
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 26
adc bl, dil
xor bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
