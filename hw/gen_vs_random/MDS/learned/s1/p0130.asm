.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, dl
test dil, dl
jmp .bb_0.1
.bb_0.1:
xor al, 9
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
or rcx, 54
test dl, 9
or cl, 6
xor al, 9
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
and cl, cl
and sil, -56
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
