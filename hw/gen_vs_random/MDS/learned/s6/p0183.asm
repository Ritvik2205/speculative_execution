.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rax, rax
test bl, cl
or rcx, -17
xor al, -4
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
test esi, 1857129931
and eax, -829294476
bts rax, 77
test dil, dl
xor cl, dil
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
and si, -121
or cl, sil
test sil, -96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
