.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 40 # instrumentation
btc rbx, rbx
cmovno ax, di
inc rax
test al, -99
sub dl, cl
jmp .bb_0.1
.bb_0.1:
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and bl, bl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
jb .bb_0.3
jmp .exit_0
.bb_0.3:
sub al, -89
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
