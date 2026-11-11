.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 48
xor al, 115
and cl, al
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
test al, dil
xor cl, dl
xor al, 9
test rdx, 20
test bl, -9
test bl, -9
test dil, sil
test cl, 91
test dil, dl
test eax, 343548072
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
