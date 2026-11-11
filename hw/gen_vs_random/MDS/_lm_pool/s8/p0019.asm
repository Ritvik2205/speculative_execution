.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, cx
xor dl, 40
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
bt cx, di
test dil, cl
test dil, 46
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
or cl, cl
or al, -58
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
xor al, 9
and sil, -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
