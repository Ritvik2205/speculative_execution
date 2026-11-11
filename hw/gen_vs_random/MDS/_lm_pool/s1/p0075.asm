.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, -126
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], bx
xor dl, bl
or al, dl
test sil, cl
test eax, 298249463
test eax, -1634766116
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and dil, -62
xor cl, al
and dil, -39
or sil, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
