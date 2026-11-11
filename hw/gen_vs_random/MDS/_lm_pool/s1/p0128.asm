.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, -14
test dl, al
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
test al, bl
and al, -114
test rbx, 25
test cl, al
xor al, -19
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
or rcx, 54
or al, -78
xor al, 9
xor dl, bl
xor dil, -70
or al, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
