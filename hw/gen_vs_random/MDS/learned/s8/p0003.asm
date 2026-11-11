.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
xor sil, cl
jmp .bb_0.1
.bb_0.1:
test dil, -80
and ax, 31082
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and eax, -829294476
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
xor dl, bl
and dil, sil
and dil, -39
test dl, -95
xor ax, -4010
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
test dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
