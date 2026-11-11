.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
btc rdx, rdx
lea rbx, qword ptr [rsi + rcx + 89]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, -89
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rsi
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
js .bb_0.3
jmp .exit_0
.bb_0.3:
xchg cl, dil
and dil, 98
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
add cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
