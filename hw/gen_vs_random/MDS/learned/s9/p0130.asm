.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
and dl, -73
or bl, -52
test al, cl
xor al, -26
test dl, 9
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
test dl, -95
test al, bl
and rsi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rsi]
and al, dl
xor cl, sil
cmovle si, cx
xor dl, cl
xor dil, 8
bt di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
