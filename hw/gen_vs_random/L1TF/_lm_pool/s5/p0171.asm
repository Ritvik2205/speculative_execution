.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
lea ecx, qword ptr [rbx]
and rsi, 38
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
btc cx, dx
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 64
add al, 74
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
lea rsi, qword ptr [rdi + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
