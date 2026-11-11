.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
jmp .bb_0.1
.bb_0.1:
and cx, -2
test cl, bl
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], ax
test dl, sil
xor cl, 83
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
or sil, bl
bt cx, dx
test sil, sil
and bl, al
and eax, 561041355
jmp .bb_0.2
.bb_0.2:
xor cl, dil
or dil, -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
