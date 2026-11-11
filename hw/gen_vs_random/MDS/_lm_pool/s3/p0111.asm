.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 91
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
test ebx, -961564216
test dx, 16353
and cl, cl
jmp .bb_0.1
.bb_0.1:
cmovnp rcx, rax
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
bts rbx, rsi
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
or al, -22
jmp .bb_0.3
.bb_0.3:
test al, 66
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], -68
or rsi, 58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
