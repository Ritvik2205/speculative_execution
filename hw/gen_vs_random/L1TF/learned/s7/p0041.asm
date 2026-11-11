.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
or cl, al
or dil, -113
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
test cl, cl
lea ecx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
xchg al, bl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
