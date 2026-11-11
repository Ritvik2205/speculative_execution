.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -9
test sil, 17
and eax, 461212071
xor dil, dl
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 53
and cl, bl
test eax, 298249463
xor cl, 98
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and si, -121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
