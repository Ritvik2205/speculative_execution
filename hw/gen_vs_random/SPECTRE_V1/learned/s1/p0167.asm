.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, -37
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
test dx, 63
xchg bl, dl
adc bl, 102
test ax, 19339
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
