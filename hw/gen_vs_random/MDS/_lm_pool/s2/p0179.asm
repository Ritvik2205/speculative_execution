.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdx, rdx
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
add dil, bl
bts rdi, rdx
or rdx, -48
jmp .bb_0.1
.bb_0.1:
test sil, 41
jmp .bb_0.2
.bb_0.2:
or cl, bl
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rax], di
or rcx, -17
and cl, 79
and bl, dil
jmp .bb_0.3
.bb_0.3:
xor sil, 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
