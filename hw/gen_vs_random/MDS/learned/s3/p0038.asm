.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
xor sil, -14
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
or al, -75
test bl, -114
and al, dil
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
