.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, dl
mov al, dil
test sil, cl
btc bx, 104
test bl, -114
xor eax, 571592471
xor sil, -14
btr dx, 47
and dx, 60
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
or sil, dil
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
or dil, bl
xor dl, -43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
