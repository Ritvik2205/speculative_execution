.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovbe dx, dx
test ax, cx
or al, 24
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
xor rsi, -117
and sil, -56
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
xor bl, 67
and dil, -39
or dil, sil
and bl, bl
test edi, -1252846009
test cl, dil
or al, -24
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
