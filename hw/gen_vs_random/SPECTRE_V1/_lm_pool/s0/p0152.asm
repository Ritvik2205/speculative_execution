.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
test al, -75
lea cx, qword ptr [rsi]
and ax, 32540
cmp bl, al
adc cx, -30
js .bb_0.1
jmp .exit_0
.bb_0.1:
setb al
cmovnp di, cx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], bl
and cl, -57
sub al, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
