.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edx, 189
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 84
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
xor sil, dl
and rcx, 107
xor rdi, -9
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
and si, -121
jmp .bb_0.1
.bb_0.1:
xor al, 34
cmovnp rax, rdi
or al, 74
btr rax, 209
test esi, 1857129931
test al, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
