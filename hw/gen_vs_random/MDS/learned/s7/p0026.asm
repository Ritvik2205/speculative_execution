.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], edx
test dil, -51
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
bts rdi, 130
xor sil, 94
xor dl, 34
test dl, 9
test sil, 41
test dil, bl
jmp .bb_0.1
.bb_0.1:
test eax, 1838539683
and ax, 339
xor cl, -13
test al, 127
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
