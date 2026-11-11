.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov dil, cl
test bl, 84
and eax, -409673666
test bl, sil
xor dl, cl
jmp .bb_0.1
.bb_0.1:
test bl, 12
add bl, dl
jmp .bb_0.2
.bb_0.2:
xor al, bl
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
