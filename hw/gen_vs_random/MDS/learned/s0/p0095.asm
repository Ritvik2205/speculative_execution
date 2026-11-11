.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 83
test al, cl
xor al, 8
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
xor al, 55
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
bts rdi, rax
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
xor rbx, 89
bt edi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
