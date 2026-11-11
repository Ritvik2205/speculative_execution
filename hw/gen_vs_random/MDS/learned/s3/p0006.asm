.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
test dl, -85
test rax, -708244380
xor rcx, -2
test edx, -1561252782
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
jmp .bb_0.1
.bb_0.1:
test cl, dil
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rsi
or al, sil
test sil, 41
cmovle si, dx
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
