.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
xor al, 55
or sil, -49
test dil, -80
jmp .bb_0.1
.bb_0.1:
and si, -121
xor sil, 27
or al, 24
or al, 24
xor sil, 27
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
test dl, -119
test eax, -1634766116
and di, 91
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
