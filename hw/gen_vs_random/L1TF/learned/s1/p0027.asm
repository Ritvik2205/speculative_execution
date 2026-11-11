.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -57
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
jmp .bb_0.1
.bb_0.1:
bts rbx, 50
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and dil, -22
jmp .bb_0.2
.bb_0.2:
cbw
and rsi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rsi]
add cl, dl
sbb al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
