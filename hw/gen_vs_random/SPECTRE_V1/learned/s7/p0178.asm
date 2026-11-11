.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
inc rcx
lea rsi, qword ptr [rax + rdi]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
mov al, dl
add cl, -127
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], -69
test bl, -8
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
adc cl, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
