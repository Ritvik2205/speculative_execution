.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, si
or al, -22
xor al, -26
bt di, 52
jmp .bb_0.1
.bb_0.1:
and al, -55
xor al, dil
xor dl, 40
test dl, 9
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
or bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
