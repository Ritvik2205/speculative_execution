.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, si
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
or sil, dil
xor bl, cl
xor ax, -6793
xor bl, al
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and cx, -8
not cl
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
or bl, -54
xor sil, 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
