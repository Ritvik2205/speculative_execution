.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], dx
bt di, cx
and cx, -8
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and dl, -73
test dil, -80
jmp .bb_0.1
.bb_0.1:
xor ax, -23364
or rsi, 14
jmp .bb_0.2
.bb_0.2:
bt edi, eax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 98
xor al, 99
xor cl, sil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
xor dil, 81
and al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
