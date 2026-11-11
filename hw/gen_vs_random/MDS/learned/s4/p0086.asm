.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
or al, cl
xor edx, 94
xor dl, bl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
test sil, 41
or cl, cl
test bl, -114
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
test esi, 1857129931
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
