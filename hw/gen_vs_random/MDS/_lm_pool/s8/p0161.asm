.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 9
or sil, -78
xor dl, -43
or al, bl
jmp .bb_0.1
.bb_0.1:
or al, -75
and cx, -2
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
test dl, dil
xor rcx, -2
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
xor dl, 34
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
