.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], bx
xor al, 115
test cl, 91
test sil, 17
xor dl, -43
or cx, 49
test dl, cl
or sil, sil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
xor dl, -59
and sil, -69
xor dl, -59
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
or sil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
