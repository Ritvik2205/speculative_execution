.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
bts rbx, rdi
test esi, 1857129931
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
test ebx, -2015966884
test cl, al
or rsi, 65
xor dl, 40
test sil, -55
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
btc eax, 40
and bx, 98
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
or bl, 43
xor bl, cl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
