.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, si
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and bl, 68
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
bt ax, si
test rsi, 49
or cl, cl
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
or rax, 1020005579
or al, bl
xor bl, -27
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
xor al, cl
xor al, -4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
