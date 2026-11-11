.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rcx], eax
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
or dl, cl
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
or cl, dil
xor dil, -124
or dl, bl
and bl, bl
jmp .bb_0.1
.bb_0.1:
test cl, 73
and rdx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
cmovnp rax, rbx
xor cl, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
