.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 38
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], bx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
or dl, dil
test al, -81
and rbx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rbx]
test cl, 62
test sil, 17
not cl
or rdi, -11
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
bt ax, bx
jmp .bb_0.2
.bb_0.2:
or rax, -1561934807
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
