.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -114
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
or dl, -8
jmp .bb_0.1
.bb_0.1:
and rax, 1886208862
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 91
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
xor sil, dil
and cl, cl
or al, bl
not cl
test cl, sil
xor bl, cl
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and cl, al
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
