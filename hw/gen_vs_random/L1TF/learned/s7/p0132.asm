.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 8
test cl, 97
and dil, bl
and rax, -109
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb dil, cl
xor dil, cl
xchg bl, cl
test di, 62
test dil, -126
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
test rdi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
