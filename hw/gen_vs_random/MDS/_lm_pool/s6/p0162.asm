.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdx, rdx
test al, -81
test edi, -1252846009
xor al, 34
and dl, -73
test al, cl
add cl, al
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 61
and al, al
test al, 22
not cl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
cmovle bx, cx
not sil
or dx, 125
and rax, 41
and sil, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
