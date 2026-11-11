.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
or dil, 12
test sil, -96
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
xor al, sil
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and sil, -56
test dl, -85
jmp .bb_0.2
.bb_0.2:
or sil, cl
or al, bl
test bl, -9
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
or bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
