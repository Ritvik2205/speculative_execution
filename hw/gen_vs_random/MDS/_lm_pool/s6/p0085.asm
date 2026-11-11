.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -96
test sil, 17
xor ax, -16696
or dil, dl
xor dl, cl
or al, cl
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
or dil, dil
xor al, -26
or bl, dl
xor al, dl
not al
and sil, dil
jmp .bb_0.1
.bb_0.1:
test al, sil
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
test dl, al
xor cl, al
xor ax, -23364
or dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
