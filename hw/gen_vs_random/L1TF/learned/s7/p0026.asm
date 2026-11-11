.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], -22
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
or dl, -67
xor sil, 64
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], 36
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
add bl, 89 # instrumentation
sbb cl, dil
jmp .bb_0.4
.bb_0.4:
test dl, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
