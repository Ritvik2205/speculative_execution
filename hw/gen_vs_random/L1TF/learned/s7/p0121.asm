.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 21 # instrumentation
adc cx, 64
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
add dil, 88
test dl, sil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdx
jmp .bb_0.2
.bb_0.2:
test cl, 35
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
or ax, -18131
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -25
cmovnbe di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
