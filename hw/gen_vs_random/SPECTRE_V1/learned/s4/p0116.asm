.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
mov dil, bl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
mov dil, al
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
