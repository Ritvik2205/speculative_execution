.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, sil
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and ax, -16061
or sil, cl
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], di
xor sil, 110
or al, dl
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
and edi, 23
and al, 14
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
