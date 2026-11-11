.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
xor al, dl
test al, -7
and rax, 452940266
and edx, -44
xor rbx, 89
jmp .bb_0.1
.bb_0.1:
test rbx, 43
and al, 82
test bl, -114
and cl, 79
jmp .bb_0.2
.bb_0.2:
or rax, -141551502
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
