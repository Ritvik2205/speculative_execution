.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 50
test bl, 65
and di, 91
xor al, dl
not al
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
test al, dl
jmp .bb_0.1
.bb_0.1:
test al, 22
test dl, -95
or dl, dil
and rax, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
