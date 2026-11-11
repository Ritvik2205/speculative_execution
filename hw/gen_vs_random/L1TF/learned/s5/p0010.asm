.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, cx
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test al, -56
and ax, 26813
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 40
add dl, -70
or al, -57
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dil
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
