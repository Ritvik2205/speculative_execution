.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 25
jmp .bb_0.1
.bb_0.1:
test dl, 27
btr cx, bx
test dl, dil
jmp .bb_0.2
.bb_0.2:
xor al, 34
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
xor cl, -13
xor al, -26
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
xor al, sil
xor bl, al
test edi, -1252846009
btc edi, 230
test al, sil
or al, -22
xor rbx, 89
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
