.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edi
and ax, 339
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
xor dil, dl
or rdi, -11
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
or bl, dil
and rax, 627810357
xor dil, -5
test esi, 1857129931
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 49
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
