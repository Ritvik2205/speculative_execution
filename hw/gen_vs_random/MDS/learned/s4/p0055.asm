.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, 46
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
xor bl, al
or cl, 119
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and ecx, -104
or al, -24
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
or al, cl
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
test bl, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
