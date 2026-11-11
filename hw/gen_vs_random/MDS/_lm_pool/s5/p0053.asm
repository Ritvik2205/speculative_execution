.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
test dl, dil
test cl, sil
not dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
jmp .bb_0.1
.bb_0.1:
xor cl, 15
btr cx, 9
and bl, bl
xor al, 8
and bl, 68
bt si, ax
jmp .bb_0.2
.bb_0.2:
test edi, -1252846009
or al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
