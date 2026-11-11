.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -97
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
or rax, 1461812833
btr si, cx
test rax, 337705873
jmp .bb_0.1
.bb_0.1:
or dil, sil
bt dx, si
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
xor rdi, -9
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
