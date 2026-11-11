.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
xor cl, al
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rax], di
test dl, bl
or al, 54
jmp .bb_0.1
.bb_0.1:
xor rbx, 89
or al, -17
test dil, -51
test esi, 425331143
jmp .bb_0.2
.bb_0.2:
and eax, -829294476
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
