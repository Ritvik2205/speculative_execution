.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edi, 248
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
jmp .bb_0.1
.bb_0.1:
or dil, -78
xor rsi, -117
test dil, -51
not cl
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
xor ax, -16696
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
test dil, -51
xor cl, 98
test al, dil
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or cl, 119
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
