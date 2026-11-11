.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 30
bts rsi, rax
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
or cl, 119
xor al, -89
jmp .bb_0.1
.bb_0.1:
test dl, 9
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and edx, -44
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
