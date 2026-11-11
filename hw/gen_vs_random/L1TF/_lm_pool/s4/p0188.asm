.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -1
lea si, qword ptr [rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rsi]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edx
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 45
jmp .bb_0.1
.bb_0.1:
add al, 74
and sil, 37
xor dl, bl
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
